class prime_eratosthenes {
	static int prime_table() {
		// 表の表示。
		for( int ii = 0, count = 10; 100 > ii; ii++ ) {
			System.out.printf("%3d", ii);
			count--;
			if( count == 0 ) {
				System.out.printf("\n");
				count = 10;
			}
		}

		return 0;
	}

	static int tablecreate(int[] table) {
		// 篩いテーブル作成。
		for( int ii = 0; 100 > ii; ii++ ) {
			//table[ii] = true;
			table[ii] = ii;
		}
		table[0] = 999;	// falseのつもり。
		table[1] = 999;	// falseのつもり。
		// 篩いテーブル内容表示。
		for( int ii=0, jj=0; 100 > ii; ii++, jj++ ) {
			if( jj == 10 ) {
				System.out.printf("\n");
				jj=0;
			}
			if( table[ii] == 999 ) {
				System.out.printf("  /");
			}
			else{
				System.out.printf("%3d", table[ii]);
			}
		}

		return 0;
	}

	static int eratosthenesSieveProcess(int[] table, int start) {
		// エラトステネスの篩を処理する関数
		System.out.printf("%dの倍数をふるい落とす。\n", start);
		for( int ii = start + start; 100 > ii; ii += start ) {
			table[ii] = 999;
		}

		return 0;
	}

	static int eratosthenesSieve(int[] table) {
		// エラトステネスの篩を表示する関数。
		for( int ii=0, jj=0; 100 > ii; ii++, jj++ ) {
			if( jj == 10 ) {
				System.out.printf("\n");
				jj=0;
			}
			if( table[ii] == 999 ) {
				System.out.printf("  /");
			}
			else{
				System.out.printf("%3d", table[ii]);
			}
		}

		return 0;
	}

	public static void main(String[] args){
//		prime_table();

		int[] table = new int[10*10];	// 10x10のテーブル作成(1次元配列)。
		tablecreate(table);	// テーブル作成後に表示する。
		for( int ii = 2; 10 > ii; ii++ ) {
			if( table[ii] == 999 ) {
				continue;
			}
			System.out.printf("\n-------\n");
			eratosthenesSieveProcess(table, ii);
			eratosthenesSieve(table);
		}
	}

}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
