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
			args += "引き数値の変更";
		}
		public void nofuncref(ref string args)
		{
			Console.WriteLine("引数{0}-戻り値なし", args);
			args += "引き数値の変更";
		}
		public void nofuncout(out string args)
		{
			args = "関数内で参照渡しの変数を初期化する";
			Console.WriteLine("引数「{0}」-戻り値なし", args); // Error CS0269: Use of unassigned out parameter 'args' (CS0269) (関数)	←初期化せずに使うことは許されない。
													  //	args += "引き数値の変更";
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

			string tomohiro = "朝来野";
			asakuno.nofunc(tomohiro);
			// 引数朝来野-戻り値なし	値渡し。
			Console.WriteLine("変数値の{0}を関数内で変更したが影響なし。", tomohiro);

			// string tomohiro = "朝来野";
			asakuno.nofuncref(ref tomohiro);
			// 引数朝来野-戻り値なし	参照渡し(引数を渡す)。
			Console.WriteLine("変数値の{0}。", tomohiro);    // 変数値の朝来野引き数値の変更。
			asakuno.nofuncout(out tomohiro);
			// 引数「関数内で参照渡しの変数を初期化する」-戻り値なし	参照渡し(引数は渡さない)。
			Console.WriteLine("変数値の{0}。", tomohiro);    // 変数値の関数内で参照渡しの変数を初期化する。

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
