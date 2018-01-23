using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using gravitekk_codegen.Parsers;

namespace gravitekk_codegen {
	class Program {
		static void Main(string[] args) {
			// open file
			// read line
			// trim line
			// 
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

			var messageConstructorCode = new List<string>();
			var eventHandlerCode = new List<string>();

			var parsers = new List<IParser>
			{
				new NarratorTextParser(),
				new BgChangeParser()
			};

			string line;
			int linenumber = 0;

			using (var s = File.OpenText(args[0]))
			{
				while ((line = s.ReadLine()) != null)
				{
					var stringParsed = false;
					foreach (var parser in parsers)
					{
						GeneratedCodeChunk chunk;
						if(parser.TryParse(line.Trim(), linenumber, out chunk))
						{
							switch (chunk.GeneratedCodeTarget)
							{
								case GeneratedCodeTarget.MessageConstructor:
									messageConstructorCode.AddRange(chunk.GeneratedCode);
									break;
								
								case GeneratedCodeTarget.EventHandler:
									eventHandlerCode.AddRange(chunk.GeneratedCode);
									break;
										
								default: break;									
							}
							linenumber++;
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

			using (var s = new StreamWriter("scr_messager_init.gml"))
			{
				messageConstructorCode.ForEach(c => s.WriteLine(c));	
			}

			using (var s = new StreamWriter("scr_event_handler.gml"))
			{
				eventHandlerCode.ForEach(c => s.WriteLine(c));	
			}

			
		}
	}
}
