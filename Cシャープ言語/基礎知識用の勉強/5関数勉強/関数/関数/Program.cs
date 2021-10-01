using System;

namespace 関数
{
	class func
	{
		public void nofuncno()
		{
			Console.WriteLine("引数なし-戻り値なし");
		}

		public void nofunc(string args)
		{
			Console.WriteLine("引数{0}-戻り値なし", args);
		}

		public string funcno()
		{
			Console.WriteLine("関数内出力");
			return "引数なし-戻り値あり";
		}

		public string function(int args)
		{
			Console.WriteLine("引数{0}-戻り値あり", args);
			return "本日は晴天なり。";
		}
	}

	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			func asakuno = new func();
			asakuno.nofuncno();
			// 引数なし-戻り値なし

			asakuno.nofunc("朝来野");
			// 引数朝来野-戻り値なし

			string ret = asakuno.funcno();
			Console.WriteLine("　　" + ret);
			// 関数内出力
			// 　　引数なし-戻り値あり

			ret = asakuno.function(20211001);
			Console.WriteLine("　　" + ret);
			// 引数20211001-戻り値あり
			// 　　本日は晴天なり。
		}
	}
}
