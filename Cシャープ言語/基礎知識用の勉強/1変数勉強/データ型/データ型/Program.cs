using System;

namespace データ型
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			int asakuno = 1234;
			float tomohiro = 12.34F;
			bool asatomo = true;
			string asakunotomohiro = "朝来野智博";
			Console.WriteLine(asakuno);         // 1234
			Console.WriteLine(tomohiro);        // 12.34
			Console.WriteLine(asatomo);         // True
			Console.WriteLine(asakunotomohiro); // 朝来野智博

			Console.WriteLine("------------------");
			// 以下、計算など。
			asatomo = (asakuno == tomohiro);
			Console.WriteLine(asakuno + tomohiro);  // 1246.34
			Console.WriteLine(asakuno - tomohiro);  // 1221.66
			Console.WriteLine(asakuno * tomohiro);  // 15227.56
			Console.WriteLine(asakuno / tomohiro);  // 100
			Console.WriteLine(asakuno % tomohiro);  // 12.33998
			Console.WriteLine(asatomo);             // False
			asatomo = (100 == 100);
			Console.WriteLine(asatomo);             // True

			Console.WriteLine("------------------");
			// 以下、キャスト(型変換)。
			//	以下、エラー。
			//		Error CS0266: Cannot implicitly convert type 'int' to 'byte'. An explicit conversion exists (are you missing a cast?) (CS0266) (データ型)

			//byte over = asakuno;
			byte over = (byte)asakuno;
			Console.WriteLine(over);    // 210
		}
	}
}
