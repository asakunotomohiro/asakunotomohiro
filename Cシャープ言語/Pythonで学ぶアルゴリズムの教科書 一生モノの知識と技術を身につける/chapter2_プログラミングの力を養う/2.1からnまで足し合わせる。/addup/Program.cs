using System;

namespace addup
{
	class MainClass
	{
		public static void add1()
		{
			var total = 0;
			for (int ii = 0; 10 >= ii; ii++)
			{
				total += ii;
			}
			// 以下、出力フォーマットを2種類使った(1つ目も文字列に変換させるべきなのか？)。
			Console.WriteLine("合計点 {0}", total);            // 合計点 55
			Console.WriteLine($"合計点 {total.ToString()}");   // 合計点 55
		}
		public static void add2(int count)
		{
			var total = 0;
			for (int ii = 0; count >= ii; ii++)
			{
				total += ii;
			}
			// 以下、出力フォーマットを2種類使った(1つ目も文字列に変換させるべきなのか？)。
			Console.WriteLine("合計点 {0}", total);            // 合計点 55
			Console.WriteLine("合計点 {0}", total.ToString()); // 合計点 55
			Console.WriteLine($"合計点 {total.ToString()}");   // 合計点 55
		}
		public static void Main(string[] args)
		{
			//add1();
			add2(10);
		}
	}
}