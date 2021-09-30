using System;

namespace 条件分岐
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			string asakuno = "朝来野智博";
			Console.WriteLine("Hello World!");
			if (asakuno == "asakuno")
			{
				Console.WriteLine("asakuno==" + asakuno);
			}
			else if (asakuno == "朝来野智博")
			{
				// 文字列の比較もイコール記号で可能。
				Console.WriteLine("朝来野智博==" + asakuno);
				// 出力結果：朝来野智博==朝来野智博
			}
			else
			{
				Console.WriteLine("else：" + asakuno);
			}
		}
	}
}
