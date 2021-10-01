using System;

namespace 配列
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			int[] numbers = new int[10];
			string[] strings = new string[numbers.Length];

			// numbers[11] = 20210919; //
			// System.IndexOutOfRangeException: Index was outside the bounds of the array.
			// at 配列.MainClass.Main(System.String[] args)[0x0001d] in Program.cs:14

			Console.WriteLine("numbers：" + numbers[0]);  // numbers：0
			Console.WriteLine("numbers：" + numbers[numbers.Length - 1]);  // numbers：0

			var weekday = new string[5];
			weekday[0] = "Monday";
			weekday[4] = "Friday";
			Console.WriteLine("weekday：" + weekday[4]);  // weekday：Friday

			var weekdaykai = new string[] { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", };
			Console.WriteLine("weekdaykai：" + weekdaykai[4]);  // weekdaykai：Friday

			// 以下、さらなる改良。
			string[] weekdaykaikai = { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", };

			// 以下、さらなる改良。
			var weekdaykaikaikai = new[] { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", };
		}
	}
}
