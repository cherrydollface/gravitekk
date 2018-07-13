using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace gravitekk_codegen.Parsers {
	static class Helper {
		public static GeneratedCodeChunk GetTrigger()
		{
			return new GeneratedCodeChunk
			{
				GeneratedCodeTarget = GeneratedCodeTarget.MessageConstructor,
				GeneratedCode = new List<string> {$"ds_queue_enqueue(messages, \"!trigger\");"}
			};
		}
	}
}
