using System;

namespace factorial
{
	class MainClass
	{
		private static int sample(int MAX)
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
			int ans = sample(10);
			Console.WriteLine("10の階乗：{0}", ans);
		}
	}
}