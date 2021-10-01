using System;

namespace ジャンプ処理break
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			for (int ii = 0; 10 > ii; ii++)
			{
				if (ii == 3)
				{
					break;
				}
				Console.WriteLine("{0}回目の実行", ii + 1);
			}
			// 実行結果：
			//				1回目の実行
			//				2回目の実行
			//				3回目の実行
		}
	}
}
