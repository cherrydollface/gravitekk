using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace gravitekk_codegen.Parsers.MissionDialog {
	class DialogLineParser : IParser {
		private Regex regex = new Regex(@"<(.+)>\s*:\s*""(.+)""");

		public bool TryParse(string input, int linenumber, out IEnumerable<GeneratedCodeChunk> output)
		{
			output = null;
			if (!regex.IsMatch(input))
			{				
				return false;
			}

			var charName = regex.Match(input).Groups[1].Value;
			var message = regex.Match(input).Groups[2].Value;

			var mesasgeOutput = new GeneratedCodeChunk
			{
				GeneratedCodeTarget = GeneratedCodeTarget.MissionDialog,
				GeneratedCode = new List<string>
				{
					$"ds_queue_enqueue(message, \"<{charName}>\");",
					$"ds_queue_enqueue(message, \"{message}\");"
				}
			};

			output = new List<GeneratedCodeChunk> {mesasgeOutput};
			return true;
		}
	}
}
