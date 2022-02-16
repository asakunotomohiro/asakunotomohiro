using System;

namespace sample
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			for (var ii = 1; 10 > ii; ii++)
			{
				for (var jj = 1; 10 > jj; jj++)
				{
					Console.WriteLine("{0}x{1}={2,2:G}", ii, jj, ii * jj);
				}
			}
		}
	}
}