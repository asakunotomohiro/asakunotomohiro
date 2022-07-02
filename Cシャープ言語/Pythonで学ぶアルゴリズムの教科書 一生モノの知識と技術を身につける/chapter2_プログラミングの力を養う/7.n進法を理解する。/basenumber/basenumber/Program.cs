using System;

namespace basenumber
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			int num = 100;
			string binnum = Convert.ToString(num, 2);
			Console.WriteLine(" 2進数：{0}", binnum);
			string octnum = Convert.ToString(num, 8);
			Console.WriteLine(" 8進数：{0}", octnum);
			string hexnum = Convert.ToString(num, 16);
			Console.WriteLine("16進数：{0}", hexnum);
		}
	}
}
