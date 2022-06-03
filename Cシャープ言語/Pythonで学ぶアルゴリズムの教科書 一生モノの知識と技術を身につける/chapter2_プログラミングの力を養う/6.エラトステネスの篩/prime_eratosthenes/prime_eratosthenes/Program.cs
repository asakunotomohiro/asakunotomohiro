using System;

namespace prime_eratosthenes
{
	class MainClass
	{
		public static void primeEratosthenes()
		{
			// 初期表示。
			int count = 10;
			for (int ii = 0; 100 > ii; ii++)
			{
				Console.Write("{0, 3:G}", ii);
				count--;
				if (count == 0)
				{
					Console.WriteLine("");
					count = 10;
				}
			}
		}

		public static int tableView(int[] table)
		{
			// 篩いテーブル内容表示。
			int count = table.Length;
			for (int ii = 0, jj = 0; count > ii; ii++, jj++)
			{
				if (jj == 10)
				{
					Console.Write("\n");
					jj = 0;
				}
				if (table[ii] == 999)
				{
					Console.Write("  /");
				}
				else
				{
					Console.Write("{0, 3:G}", table[ii]);
				}
			}

			return 0;
		}

		public static int sievingTable(ref int[] table)
		{
			// 篩いテーブル作成。
			int count = table.Length;
			for (int ii = 0; count > ii; ii++)
			{
				table[ii] = ii;
			}

			return 0;
		}

		public static int eratosthenesSieveProcess(ref int[] table, int start)
		{
			// エラトステネスの篩を処理する関数。
			Console.WriteLine("{0}の倍数をふるい落とす。", start);
			for (int ii = start + start; table.Length > ii; ii += start)
			{
				table[ii] = 999;
			}

			return 0;
		}

		public static void Main(string[] args)
		{
			int[] table = new int[10 * 10];
			// primeEratosthenes();	テーブル表示。
			sievingTable(ref table);    // テーブル初期化(必要か？)。
			table[0] = 999; // falseのつもり。
			table[1] = 999; // falseのつもり。
			tableView(table);   // テーブル表示。
			for (int ii = 2; 10 > ii; ii++)
			{
				if (table[ii] == 999)
				{
					continue;
				}
				Console.Write("\n-----------------------\n");
				eratosthenesSieveProcess(ref table, ii);    // 篩に掛ける。
				tableView(table);
			}
		}
	}
}
