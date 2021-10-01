using System;

//int tomohiroasakuno = 20211001;
// Program.cs(1,1): Error CS8370: Feature 'top-level statements' is not available in C# 7.3. Please use language version 9.0 or greater. (CS8370) (スコープ)
namespace スコープ
{
	// int asakunotomohiro = 20211001;
	//	Program.cs(6,6): Error CS0116: A namespace cannot directly contain members such as fields or methods (CS0116) (スコープ)
	class MainClass
	{
		//int tomohiro = 20211001;	←☆ここでの宣言はエラーにならないが、使わなければエラーになる。
		public static void Main(string[] args)
		{
			Console.WriteLine("Hello World!");

			int asakuno = 20211001;
			//Console.WriteLine("tomohiroasakuno：" + tomohiroasakuno);
			//Console.WriteLine("asakunotomohiro：" + asakunotomohiro);
			//Console.WriteLine("tomohiro：" + tomohiro);
			//	Program.cs(36,36): Error CS0120: An object reference is required for the non-static field, method, or property 'MainClass.tomohiro' (CS0120) (スコープ)
			Console.WriteLine("asakuno：" + asakuno);    // asakuno：20211001

			{
				int asakuno2 = 20211001;
				Console.WriteLine("asakuno2：" + asakuno2);  // asakuno2：20211001
			}
			//Console.WriteLine("asakuno2：" + asakuno2);
			// Program.cs(36,36): Error CS0103: The name 'asakuno2' does not exist in the current context (CS0103) (スコープ)
		}
	}
}
