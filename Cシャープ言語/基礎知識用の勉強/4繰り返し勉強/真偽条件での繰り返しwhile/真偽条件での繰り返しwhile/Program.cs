using System;

namespace 真偽条件での繰り返しwhile
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			int ii = 0;
			while (3 > ii)
			{
				Console.WriteLine("{0}回目の実行。", ii + 1);
				ii++;
			}
			// 実行結果：
			//					1回目の実行。
			//					2回目の実行。
			//					3回目の実行。
		}
	}
}
