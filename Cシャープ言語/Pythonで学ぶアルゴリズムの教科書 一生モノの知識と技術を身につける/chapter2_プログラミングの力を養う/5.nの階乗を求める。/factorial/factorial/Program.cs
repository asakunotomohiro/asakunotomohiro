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
			if (count == 0)
			{
				total = 1;
			}
			else
			{
				total = count * sample2(count - 1);
			}
			return total;
		}
		public static void Main(string[] args)
		{
			//			int ans = sample1(10);
			int ans = sample2(10);
			Console.WriteLine("10の階乗：{0}", ans);
		}
	}
}