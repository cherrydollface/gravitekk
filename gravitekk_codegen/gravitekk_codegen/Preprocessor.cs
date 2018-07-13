using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using gravitekk_codegen.Parsers;

namespace gravitekk_codegen {
	static class Preprocessor {

		private static Regex charLineRegex = new Regex(@"(^<.+>\s*:\s*)""");

		private static bool IsCharacterOrNarratorLineStart(string trimmnedLine)
		{
			var efLine = trimmnedLine;
			var charNameMatch = charLineRegex.Match(trimmnedLine);
			if (charNameMatch.Success)
			{
				efLine = trimmnedLine.Remove(charNameMatch.Groups[1].Index, charNameMatch.Groups[1].Length);
			}
			if (efLine.StartsWith("\"") && (!efLine.EndsWith("\""))) return true;
			return false;
		}

		private static bool IsCharacterOrNarratorLineEnd(string trimmnedLine)
		{
			var efLine = trimmnedLine;
			var charNameMatch = charLineRegex.Match(trimmnedLine);
			if (charNameMatch.Success)
			{
				efLine = trimmnedLine.Remove(charNameMatch.Groups[1].Index, charNameMatch.Groups[1].Length);
			}
			if (!efLine.StartsWith("\"") && (efLine.EndsWith("\""))) return true;
			return false;
		}

		private static bool IsLineInBetween(string trimmnedLine)
		{
			var efLine = trimmnedLine;
			var charNameMatch = charLineRegex.Match(trimmnedLine);
			if (charNameMatch.Success)
			{
				efLine = trimmnedLine.Remove(charNameMatch.Groups[1].Index, charNameMatch.Groups[1].Length);
			}
			if (!efLine.StartsWith("\"") && (!efLine.EndsWith("\""))) return true;
			return false;
		}

		private static bool IsSeparateLine(string trimmnedLine)
		{
			var efLine = trimmnedLine;
			var charNameMatch = charLineRegex.Match(trimmnedLine);
			if (charNameMatch.Success)
			{
				efLine = trimmnedLine.Remove(charNameMatch.Groups[1].Index, charNameMatch.Groups[1].Length);
			}
			if (efLine.StartsWith("\"") && (efLine.EndsWith("\""))) return true;
			return false;
		}

		public static bool Preprocess(StreamWriter stream, string fileName)
		{
			bool openBracket = false;
			int openBracketLine = 0;
			int preproLine = 0;
			var acc = string.Empty;
			using (var s = File.OpenText(fileName))
			{
				string line;
				while ((line = s.ReadLine()) != null)
				{
					preproLine++;

					var trimmnedLine = line.Trim();

					if (String.IsNullOrEmpty(trimmnedLine)) continue;
					if (trimmnedLine.StartsWith("//")) continue;

					if (trimmnedLine.EndsWith(";"))
					{
						stream.WriteLine(trimmnedLine);
						continue;						
					}
					if (IsSeparateLine(trimmnedLine))
					{
						stream.WriteLine(trimmnedLine);
						continue;						
					}
					if (IsCharacterOrNarratorLineStart(trimmnedLine))
					{
						acc = acc + " " + trimmnedLine;
						openBracket = true;
						openBracketLine = preproLine;
					}
					else
					{
						if (IsCharacterOrNarratorLineEnd(trimmnedLine))
						{
							acc = acc + " " + trimmnedLine;
							stream.WriteLine(acc.Trim());
							acc = string.Empty;
							openBracket = false;
						}
						else
						{
							if(IsLineInBetween(trimmnedLine))
							{
								acc = acc + " " + trimmnedLine;
							}
						}
					}
				}
			}
			if (openBracket)
			{
				Console.WriteLine($"Error! Bracket opened on line {openBracketLine} and was not closed!");
				return false;
			}	
			return true;
		}
	}
}
