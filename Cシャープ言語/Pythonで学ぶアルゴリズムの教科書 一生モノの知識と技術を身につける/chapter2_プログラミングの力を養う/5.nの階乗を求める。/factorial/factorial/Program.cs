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
		public static void Main(string[] args)
		{
			//			int ans = sample1(10);
			//			sample2(10);
			int ans = factorial1(10);   // ルール1に従った階乗を求める関数呼び出し。
			Console.WriteLine("10の階乗：{0}", ans);
		}
	}
}