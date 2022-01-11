using System;

namespace average
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			int[] score = new int[]{
							70,
							98,
							92,
							88,
							64,
						};
			var total = 0;
			for (int ii = 0; score.Length > ii; ii++)
			{
				total += score[ii];
			}
			var average = (float)total / score.Length;
			Console.WriteLine($"合計点 {total.ToString()}");   // 合計点 412
			Console.WriteLine($"平均点 {average.ToString()}"); // 平均点 82.4
		}
	}
}
