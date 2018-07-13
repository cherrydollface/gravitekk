using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace gravitekk_codegen.Parsers {
	class CreateCharacterParser : IParser {
		private static readonly Regex regex = new Regex(@"create_char\((.+),(.+)\)");
		private const string CENTER = "CENTER";
		private const string LEFT = "LEFT";
		private const string RIGHT = "RIGHT";

		private Tuple<string, string> ParseCharacterPosition(string pos)
		{
			switch (pos.ToUpperInvariant())
			{
				case CENTER:
					return new Tuple<string, string>("global.charCenterX", "global.charCenterY");
					break;
				case LEFT:
					return new Tuple<string, string>("global.charLeftX", "global.charLeftY");
					break;
				case RIGHT:
					return new Tuple<string, string>("global.charRightX", "global.charRightY");
					break;
				default:
					throw new ArgumentException($"Invalid character postion: {pos}");
					break;
			}			
		}	
		 
		public bool TryParse(string input, int linenumber, out IEnumerable< GeneratedCodeChunk > output)
		{
			output = null;
			if (!regex.IsMatch(input))
			{				
				return false;
			}

			var params_ = new
			{
				CharName = regex.Match(input).Groups[1].Value,
				CharPos = ParseCharacterPosition(regex.Match(input).Groups[2].Value)
			}; 

			var singleOutput = new GeneratedCodeChunk
			{
				GeneratedCodeTarget = GeneratedCodeTarget.EventHandler,
				GeneratedCode = new List<string>
				{
					$"case {linenumber}:",
					$"	instance_create_layer( {params_.CharPos.Item1}, {params_.CharPos.Item2}, LAYER_CHARACTERS, o_{params_.CharName} );",
					"	break;"	
				}
			};

			output = new List<GeneratedCodeChunk> { singleOutput, Helper.GetTrigger() };
			return true;
		}
	}
}
