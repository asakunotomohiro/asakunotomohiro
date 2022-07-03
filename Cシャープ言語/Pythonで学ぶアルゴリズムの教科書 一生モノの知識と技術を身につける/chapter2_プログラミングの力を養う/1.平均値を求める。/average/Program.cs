using System;

namespace average
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			var score = new int[]{
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
			var average = (float)total / score.Length;
			//var average = total / (float)score.Length;	上記と同じように、こちらも問題なく動く。
			Console.WriteLine("合計点 {0}", total);   // 合計点 412
			Console.WriteLine($"平均点 {average.ToString()}"); // 平均点 82.4
		}
	}
}
