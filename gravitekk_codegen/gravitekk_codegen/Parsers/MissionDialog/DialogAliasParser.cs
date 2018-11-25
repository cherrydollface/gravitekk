using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace gravitekk_codegen.Parsers.MissionDialog {
	class DialogAliasParser : IParser {
		private Regex regex = new Regex(@"\[(.+)\]");

		public bool TryParse(string input, int linenumber, out IEnumerable<GeneratedCodeChunk> output)
		{
			output = null;
			if (!regex.IsMatch(input))
			{				
				return false;
			}

			var dialogAlias = regex.Match(input).Groups[1].Value;


			var singleOutput = new GeneratedCodeChunk
			{
				GeneratedCode = new List<string>
				{
					linenumber == 0 ? "" : "} else",
					// todo move to separate script
					$"if (currentDialogName == \"{dialogAlias}\")" + " {"
				},
				GeneratedCodeTarget = GeneratedCodeTarget.MissionDialog
			};

			output = new List<GeneratedCodeChunk> { singleOutput };

			return true;
		}
	}
}
