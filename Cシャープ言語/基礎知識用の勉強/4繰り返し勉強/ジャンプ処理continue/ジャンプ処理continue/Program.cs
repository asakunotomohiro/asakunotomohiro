using System;

namespace ジャンプ処理continue
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			for (int ii = 0; 5 > ii; ii++)
			{
				if (ii == 2)
				{
					continue;
				}
				Console.WriteLine("{0}回目の実行。", ii + 1);
			}
			// 実行結果：
			//				1回目の実行。
			//				2回目の実行。
			//				4回目の実行。
			//				5回目の実行。
		}
	}
}
