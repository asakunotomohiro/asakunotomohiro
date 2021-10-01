using System;

namespace 変数
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			string asakuno = "朝来野";
			string tomohiro;

			// 複数同時宣言
			int asa = 0, kuno = 1, tomo = 2, hiro = 3;

			// 出力
			tomohiro = @"{朝来野
　|
智博}";
			Console.WriteLine(asakuno, tomohiro, asa, kuno, tomo, hiro);    // この書き方では出力されない(先頭の変数のみ出力された)。
			Console.WriteLine(tomohiro);
			Console.WriteLine(asa);     // 0
			Console.WriteLine(kuno);    // 1
			Console.WriteLine(tomo);    // 2
			Console.WriteLine(hiro);    // 3
		}
	}
}
