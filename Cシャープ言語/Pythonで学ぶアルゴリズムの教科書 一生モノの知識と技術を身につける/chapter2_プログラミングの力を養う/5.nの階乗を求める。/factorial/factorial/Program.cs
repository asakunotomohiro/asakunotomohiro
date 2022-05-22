using System;

namespace factorial
{
	class MainClass
	{
		private static int sample1(int MAX)
		{
			var count = 1;
			for (var ii = MAX; ii > 0; ii--)
			{
				count *= ii;
			}
			return count;
		}
		private static int sample2(int count)
		{
			var total = 0;
			if (count > 0)
			{
				Console.WriteLine("再帰関数{0, 2:00}回目の実行", count);
				sample2(count - 1);
			}
			return total;
		}
		private static int factorial1(int MAX)
		{
			var count = 1;
			for (var ii = MAX; ii > 0; ii--)
			{
				count *= ii;
			}
			return count;
		}
		private static int factorial2(int count)
		{
			// 階乗を求める再帰呼び出し関数。
			var total = 1;
			if (count == 0)
			{
				total = 1;
			}
			else
			{
				total = count * factorial2(count - 1);
			}
			return total;
		}
		public static void Main(string[] args)
		{
			int ans = 0;
			ans = sample1(10);
			Console.WriteLine("10の階乗：{0}　※累乗サンプル", ans);
			sample2(10);
			ans = factorial1(10);   // ルール1に従った階乗を求める関数呼び出し。
			Console.WriteLine("10の階乗：{0}　※ルール1", ans);
			ans = factorial2(10);   // ルール2に従った階乗を求める関数呼び出し。
			Console.WriteLine("10の階乗：{0}　※ルール2", ans);
		}
	}
}