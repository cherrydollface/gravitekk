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
				new BgChangeParser(),
				new CreateCharacterParser(),
				new CharacterDialogueParser(),
				new CharacterMoveLeftParser(),
				new SetCharacterActiveParser(),
				new DestroyCharacterParser()
			};

			string line;
			int linenumber = 0;
			int eventNumber = 0;

			// preprocess
			var stream = new StreamWriter(new MemoryStream());

			if (!Preprocessor.Preprocess(stream, args[0]))
			{
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
						IEnumerable<GeneratedCodeChunk> chunks;
						if (parser.TryParse(line.Trim(), eventNumber, out chunks))
						{
							foreach (var chunk in chunks)
							{
								switch (chunk.GeneratedCodeTarget)
								{
									case GeneratedCodeTarget.MessageConstructor:
									{
										messageConstructorCode.AddRange(chunk.GeneratedCode);
										break;
									}

									case GeneratedCodeTarget.EventHandler:
									{
										eventHandlerCode.AddRange(chunk.GeneratedCode);
										break;
									}
									default:
										break;
								}
							}
							linenumber++;
							if(!(parser is NarratorTextParser || parser is CharacterDialogueParser))
							{
								eventNumber++;
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
				s.WriteLine("var world = instance_find(o_novel_world, 0);");
				s.WriteLine("switch(world.worldEventCount) {"); 
				eventHandlerCode.ForEach(c => s.WriteLine("\t" + c));
				s.WriteLine("	default : break;");
				s.WriteLine("}");
				s.WriteLine("world.worldEventCount++;");
			}
		}
	}
}