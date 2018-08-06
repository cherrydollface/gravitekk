using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace gravitekk_codegen.Parsers {
	class BgScrollParser : IParser {

		private Regex regex = new Regex(@"bg_scroll\((.+)\)");

		public bool TryParse(string input,int linenumber, out IEnumerable<GeneratedCodeChunk> output)
		{
			output = null;
			if (!regex.IsMatch(input))
			{				
				return false;
			}

			var singleOutput = new GeneratedCodeChunk
			{
				GeneratedCode = new List<string>
				{
					// todo move to separate script
					$"case {linenumber}:",
					"	var bg = instance_find(o_bg, 0);",
					"	bg.state = BGSTATE_SCROLL;",
					"	break;"	
				},
				GeneratedCodeTarget = GeneratedCodeTarget.EventHandler
			};

			output = new List<GeneratedCodeChunk> { singleOutput, Helper.GetTrigger() };

			return true;
		}
	}
}
