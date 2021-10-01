using System;

namespace 無限ループfor
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			int ii = 0;
			for (; ; )
			{
				Console.WriteLine("無限ループ{0}回目", ii + 1);
				ii++;
			}
		}
	}
}
