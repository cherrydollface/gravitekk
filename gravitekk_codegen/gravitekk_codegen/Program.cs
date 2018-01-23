using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using gravitekk_codegen.Parsers;

namespace gravitekk_codegen
{
	class Program
	{
		static void Main(string[] args)
		{
			if (args.Length < 1)
			{
				Console.WriteLine("Missing filename argument!");
				return;
			}

			if (!File.Exists(args[0]))
			{
				Console.WriteLine($"Source file not found: {args[0]}");
				return;
			}

			// get chapter name 			
			var chapterPrefix = Path.GetFileNameWithoutExtension(args[0]);
			bool debugMode = args.Length > 1 && args[1] == "-d";

			var messageConstructorCode = new List<string>();
			var eventHandlerCode = new List<string>();

			var parsers = new List<IParser>
			{
				new NarratorTextParser(),
				new BgChangeParser()
			};

			string line;
			int linenumber = 0;
			int messageLineNumber = 0;

			// preprocess
			var stream = new StreamWriter(new MemoryStream());

			bool openBracket = false;
			int openBracketLine = 0;
			int preproLine = 0;

			var acc = string.Empty;

			using (var s = File.OpenText(args[0]))
			{
				while ((line = s.ReadLine()) != null)
				{
					preproLine++;

					var trimmnedLine = line.Trim();

					if (String.IsNullOrEmpty(trimmnedLine)) continue;
					if (trimmnedLine.StartsWith("//")) continue;

					if (trimmnedLine.StartsWith("\"") && (!trimmnedLine.EndsWith("\"")))
					{
						acc = acc + trimmnedLine;
						openBracket = true;
						openBracketLine = preproLine;
					}
					else
					{
						if (!trimmnedLine.StartsWith("\"") && (trimmnedLine.EndsWith("\"")))
						{
							acc = acc + trimmnedLine;
							stream.WriteLine(acc);
							acc = string.Empty;
							openBracket = false;
						}
						else
						{
							acc = acc + trimmnedLine;
							stream.WriteLine(trimmnedLine);
						}
					}
				}
			}
			if (openBracket)
			{
				Console.WriteLine($"Error! Bracket opened on line {openBracketLine} and was not closed!");
				return;
			}

			stream.Flush();
			stream.BaseStream.Position = 0;

			if (debugMode)
			{
				using (var s = new StreamWriter("preproc.txt"))
				{
					stream.BaseStream.CopyTo(s.BaseStream);
				}

				stream.BaseStream.Position = 0;
			}

			using (var s = new StreamReader(stream.BaseStream))
			{
				while ((line = s.ReadLine()) != null)
				{
					var stringParsed = false;
					foreach (var parser in parsers)
					{
						GeneratedCodeChunk chunk;
						if (parser.TryParse(line.Trim(), messageLineNumber, out chunk))
						{
							switch (chunk.GeneratedCodeTarget)
							{
								case GeneratedCodeTarget.MessageConstructor:
									messageConstructorCode.AddRange(chunk.GeneratedCode);
									break;

								case GeneratedCodeTarget.EventHandler:
									eventHandlerCode.AddRange(chunk.GeneratedCode);
									break;

								default:
									break;
							}
							linenumber++;
							if (parser is NarratorTextParser)
							{
								messageLineNumber++;
							}
							stringParsed = true;
							break;
						}
					}
					if (!stringParsed)
					{
						Console.WriteLine($"Error! Cannot parse '{line}' at line {linenumber + 1}");
						break;
					}
				}
			}

			using (var s = new StreamWriter($"scr_{chapterPrefix}_messager_init.gml"))
			{
				messageConstructorCode.ForEach(c => s.WriteLine(c));
			}

			using (var s = new StreamWriter($"scr_{chapterPrefix}_event_handler.gml"))
			{
				s.WriteLine("switch(argument0) {");
				eventHandlerCode.ForEach(c => s.WriteLine(c));
				s.WriteLine("default : break;");
				s.WriteLine("}");
			}
		}
	}
}