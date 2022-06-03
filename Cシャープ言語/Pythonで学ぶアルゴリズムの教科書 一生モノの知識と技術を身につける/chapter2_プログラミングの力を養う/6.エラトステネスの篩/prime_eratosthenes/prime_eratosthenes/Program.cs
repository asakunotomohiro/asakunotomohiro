using System;

namespace prime_eratosthenes
{
	class MainClass
	{
		public static void primeEratosthenes()
		{
			int count = 10;
			for (int ii = 0; 100 > ii; ii++)
			{
				Console.Write("{0, 3:G}", ii);
				count--;
				if (count == 0)
				{
					Console.WriteLine("");
					count = 10;
				}
			}
		}

		public static void Main(string[] args)
		{
			primeEratosthenes();
		}
	}
}
