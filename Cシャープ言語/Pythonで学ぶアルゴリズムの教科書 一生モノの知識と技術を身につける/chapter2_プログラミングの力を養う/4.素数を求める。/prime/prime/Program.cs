using System;

namespace prime
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			for (var ii = 2; 101 > ii; ii++)
			{
				var half = ii / 2;  // 商を求める。
				bool flag = true;
				for (var jj = 2; half >= jj; jj++)
				{
					if ((ii % jj) == 0)
					{
						// 剰余算にて、割り切れる田ならば出力対象外にする。
						flag = false;
						break;
					}
				}
				if (flag == true)
				{
					Console.Write("{0},", ii);
				}
			}

		}
	}
}
