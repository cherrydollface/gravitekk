using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace gravitekk_codegen.Parsers {
	class SetCharacterActiveParser : IParser {
	
		private Regex regex = new Regex(@"char_set_active\((.+)\)");

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
				GeneratedCode = new List<string>
				{
					$"case {linenumber}:",
				    $"	scr_char_set_active(instance_find(o_{charActor}, 0));",
					"	break;"
				},
				GeneratedCodeTarget = GeneratedCodeTarget.EventHandler
			};

			output = new List<GeneratedCodeChunk> {singleOutput, Helper.GetTrigger()};

			return true;
		}
	}
}
