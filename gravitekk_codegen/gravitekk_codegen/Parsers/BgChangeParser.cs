using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace gravitekk_codegen.Parsers {
	class BgChangeParser : IParser {

		private Regex regex = new Regex(@"bgchange\((.+)\)");

		public bool TryParse(string input,int linenumber, out GeneratedCodeChunk output)
		{
			output = null;
			if (!regex.IsMatch(input))
			{				
				return false;
			}

			var bg = regex.Match(input).Groups[1].Value;

			output = new GeneratedCodeChunk
			{
				GeneratedCode = new List<string>
				{
					// todo move to separate script
					$"case {linenumber}:",
					"	var bg = instance_find(o_bg, 0);",
					$"	bg.new_bg = {bg};",
					"	bg.state = BGSTATE_FADE_OUT;",
					"	break;"	
				},
				GeneratedCodeTarget = GeneratedCodeTarget.EventHandler
			};

			return true;
		}
	}
}
