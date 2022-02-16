using System;

namespace sample
{
	class MainClass
	{
		public static void kuku1()
		{
			for (var ii = 1; 10 > ii; ii++)
			{
				for (var jj = 1; 10 > jj; jj++)
				{
					Console.WriteLine("{0}x{1}={2,2:G}", ii, jj, ii * jj);
				}
			}
		}
		public static void kuku2()
		{
			for (var ii = 1; 10 > ii; ii++)
			{
				for (var jj = 1; 10 > jj; jj++)
				{
					Console.Write("{0,2:D}x{1:D}={2,2:G}", jj, ii, ii * jj);
				}
				Console.WriteLine("");
			}
		}
		public static void Main(string[] args)
		{
			//kuku1();
			kuku2();
		}
	}
}