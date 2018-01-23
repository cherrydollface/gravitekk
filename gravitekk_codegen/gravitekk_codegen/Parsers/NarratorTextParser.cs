using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace gravitekk_codegen.Parsers {
	class NarratorTextParser : IParser {

		private Regex regex = new Regex("\"(.+)\"");

		public bool TryParse(string input, int linenumber, out GeneratedCodeChunk output)
		{
			output = null;
			if (!regex.IsMatch(input))
			{				
				return false;
			}

			var message = regex.Match(input).Groups[1].Value;

			output = new GeneratedCodeChunk
			{
				GeneratedCodeTarget = GeneratedCodeTarget.MessageConstructor,
				GeneratedCode = new List<string> {$"messages += \"{message}\""}
			};

			return true;
		}
	}
}
