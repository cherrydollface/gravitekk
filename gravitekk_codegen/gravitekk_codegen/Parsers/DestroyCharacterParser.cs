using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace gravitekk_codegen.Parsers {
	class DestroyCharacterParser : IParser {
		private static readonly Regex regex = new Regex(@"destroy_char\((.+)\)");

		public bool TryParse(string input, int linenumber, out IEnumerable<GeneratedCodeChunk> output)
		{
			output = null;
			if (!regex.IsMatch(input))
			{
				return false;
			}

			var charActor = regex.Match(input).Groups[1].Value;

			var singleOutput = new GeneratedCodeChunk
			{
				GeneratedCodeTarget = GeneratedCodeTarget.EventHandler,
				GeneratedCode = new List<string>
				{
					$"case {linenumber}:",
					$"	with instance_find(o_{charActor},0) do ",
					"	{",
					"		destroying = true;",
					"		global.gamestate = STATE_TRANSITION",
					"	}",	
					"	break;"	
				}
			};

			output = new List<GeneratedCodeChunk> { singleOutput, Helper.GetTrigger() };
			return true;

		}

	}
}
