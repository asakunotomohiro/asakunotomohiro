using System;

namespace average
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			int[] score = {
							70,
							98,
							92,
							88,
							64,
						};
			var total = 0;
			foreach (int value in score)
			{
				total += value;
			}
			var average = total / (float)score.Length;
			Console.WriteLine("合計点 {0}", total);   // 合計点 412
			Console.WriteLine("平均点 {0}", average); // 平均点 82.4
		}
	}
}
