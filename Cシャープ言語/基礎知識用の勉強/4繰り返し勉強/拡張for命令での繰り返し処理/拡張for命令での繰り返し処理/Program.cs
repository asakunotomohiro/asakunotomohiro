using System;

namespace 拡張for命令での繰り返し処理
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");
			var asakuno = new[] { "朝来野", "智博", "asakuno", "tomohiro", };
			int ii = 0;

			foreach (var value in asakuno)
			{
				Console.WriteLine("asakuno[{0}]の値：{1}", ii, value);
				ii++;
			}
			// 出力結果：
			//					asakuno[0]の値：朝来野
			//					asakuno[1]の値：智博
			//					asakuno[2]の値：asakuno
			//					asakuno[3]の値：tomohiro
		}
	}
}
