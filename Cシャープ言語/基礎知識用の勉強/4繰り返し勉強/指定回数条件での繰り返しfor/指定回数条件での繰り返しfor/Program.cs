using System;

namespace 指定回数条件での繰り返しfor
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			for (int ii = 0; ii < 5; ii++)
			{
				Console.WriteLine(ii + "回目の実行");
			}
			// 実行結果：
			//					0回目の実行
			//					1回目の実行
			//					2回目の実行
			//					3回目の実行
			//					4回目の実行
		}
	}
}
