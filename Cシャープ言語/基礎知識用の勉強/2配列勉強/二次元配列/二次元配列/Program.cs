using System;

/*
 * せっかくなので、矩形配列を今後使っていく。
 */
namespace 二次元配列
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			int[,] array = new int[5, 10];
			var twoarray = new int[,]
			{
				{ 20210919, 20210920, 20210921, },
				{ 20210918, 20210917, 20210916, },
			};

			Console.WriteLine("2次元配列：" + twoarray[1, 2]);   // 2次元配列：20210916

			array[2, 9] = 20210919;
			Console.WriteLine("2次元配列array[0, 0]：" + array[0, 0]);   // 2次元配列array[0, 0]：0
			Console.WriteLine("2次元配列array[2, 9]：" + array[2, 9]);   // 2次元配列array[2, 9]：20210919

			// Console.WriteLine("2次元配列array[5, 9]：" + array[5, 9]);   // System.IndexOutOfRangeException
			// Console.WriteLine("2次元配列array[4, 10]：" + array[4, 10]);   // System.IndexOutOfRangeException

			Console.WriteLine("2次元配列arrayの大きさ：" + array.Length);    // 2次元配列arrayの大きさ：50
			Console.WriteLine("2次元配列arrayの大きさ：" + array.GetLength(0));    // 2次元配列arrayの大きさ：5
			Console.WriteLine("2次元配列arrayの大きさ：" + array.GetLength(1));    // 2次元配列arrayの大きさ：10

			// Console.WriteLine("2次元配列arrayの大きさ：" + array.GetLength(2));    // System.IndexOutOfRangeException

		}
	}
}
