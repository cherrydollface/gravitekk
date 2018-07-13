using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace gravitekk_codegen.Parsers {
	class CharacterDialogueParser : IParser
	{
		
		public static Regex regex = new Regex(@"<(.+)>\s*:\s*""(.+)""");

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
				GeneratedCodeTarget = GeneratedCodeTarget.MessageConstructor,
				GeneratedCode = new List<string>
				{
					$"ds_queue_enqueue(messages, \"<{charName}>\");",
					$"ds_queue_enqueue(messages, \"{message}\");"
				}
			};

			output = new List<GeneratedCodeChunk> {mesasgeOutput};
			return true;
		}

	}
}
