using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace gravitekk_codegen {
	interface IParser
	{
		bool TryParse(string input, int linenumber, out GeneratedCodeChunk output);
	}
}
