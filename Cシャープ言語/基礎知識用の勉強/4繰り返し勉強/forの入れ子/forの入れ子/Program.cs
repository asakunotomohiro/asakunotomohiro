using System;

namespace forの入れ子
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			var asakuno = new[] { "朝来野", "智博", };
			var tomohiro = new[] { "asakuno", "tomohiro", };
			foreach (var ii in asakuno)
			{
				foreach (var jj in tomohiro)
				{
					Console.WriteLine("1つ目のfor文の値：{0}\n　　2つ目のfor文の値：{1}", ii, jj);
				}

			}
			// 出力結果：
			//				1つ目のfor文の値：朝来野
			//				　　2つ目のfor文の値：asakuno
			//				1つ目のfor文の値：朝来野
			//				　　2つ目のfor文の値：tomohiro
			//				1つ目のfor文の値：智博
			//				　　2つ目のfor文の値：asakuno
			//				1つ目のfor文の値：智博
			//				　　2つ目のfor文の値：tomohiro
		}
	}
}
