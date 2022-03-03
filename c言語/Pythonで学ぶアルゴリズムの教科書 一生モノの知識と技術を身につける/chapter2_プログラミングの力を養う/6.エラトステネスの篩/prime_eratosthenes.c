#include <stdio.h>

int sievingTable(int (*table)[10])
{
	// ギブアップ関数。
	// 篩いテーブル作成。
	//int table[10][10];
	for( int ii = 0, jj = 0, kk = 0; 100 > ii; ii++, kk++ ) {
		if( kk == 10 ) {
			printf("\n");
			jj++;
			kk = 0;
		}
		printf("%3d", ii );
		table[jj][kk] = ii;
	}

//	printf("\n-------\n");
//	for( int ii=0; 10>ii; ii++ ) {
//		for( int jj=0; 10>jj; jj++ ) {
//			printf("%3d", table[ii][jj]);
//		}
//		printf("\n");
//	}

	return 0;
}

int sievingTableRe(int *table)
{
	// 篩いテーブル作成。
	for( int ii = 0; 100 > ii; ii++ ) {
		table[ii] = ii;
	}

	return 0;
}

int tableView(int (*table)[10])
{
	// ギブアップ関数。
	// 篩いテーブル内容表示。
	for( int ii=0; 10>ii; ii++ ) {
		for( int jj=0; 10>jj; jj++ ) {
			printf("%3d", table[ii][jj]);
		}
		printf("\n");
	}

	return 0;
}

int tableViewRe(int *table)
{
	// 篩いテーブル内容表示。
	for( int ii=0, jj=0; 100>ii; ii++, jj++ ) {
		if( jj == 10 ) {
			printf("\n");
			jj=0;
		}
		if( table[ii] == 999 ) {
			printf("  /");
		}
		else{
			printf("%3d", table[ii]);
		}
	}

	return 0;
}

int eratosthenes_sieve(int (*table)[10])
{
	// ギブアップ関数。
	// エラトステネスの篩を表示する関数。
	for( int ii=0; 10>ii; ii++ ) {
		for( int jj=0; 10>jj; jj++ ) {
			if( table[ii][jj] != 999 ) {
				printf("%3d", table[ii][jj]);
			}
			else{
				printf("  /");
			}
		}
		printf("\n");
	}

	return 0;
}

int eratosthenesSieveRe(int *table)
{
	// エラトステネスの篩を表示する関数。
	for( int ii=0, jj=0; 100>ii; ii++, jj++ ) {
		if( jj == 10 ) {
			printf("\n");
			jj=0;
		}
		if( table[ii] == 999 ) {
			printf("  /");
		}
		else{
			printf("%3d", table[ii]);
		}
	}

	return 0;
}

int eratosthenesSieveProcess(int (*table)[10], int start)
{
	// ギブアップ関数。
	// エラトステネスの篩を処理する関数
	printf("%dの倍数をふるい落とす。\n", start);
	for( int ii=0; 10>ii; ii++ ) {
	//for( start=start+start; 10>start; start++ ) {
		//for( int jj=0; 10>jj; jj++ ) {
		for( int jj=start+start; 10>jj; jj+=start ) {
			table[ii][jj] = 999;
		}
	}

	return start;
}

int eratosthenesSieveProcessRe(int *table, int start)
{
	// エラトステネスの篩を処理する関数
	printf("%dの倍数をふるい落とす。\n", start);
	for( int ii=start+start; 100>ii; ii+=start ) {
		table[ii] = 999;
	}

	return 0;
}

int main(void)
{
	// 以下、ギブアップ。
//	int table[10][10];
//	sievingTable(table);
//	table[0][0] = 999;	// falseのつもり。
//	table[0][1] = 999;	// falseのつもり。
//	printf("\n-------\n");
//	//tableView(table);
//
//	for( int ii = 2; 10 > ii; ii++ ) {
//		eratosthenes_sieve(table);
//		printf("-------\n");
//		eratosthenesSieveProcess(table, ii);
//	}

	int table[10*10];
	sievingTableRe(table);
	table[0] = 999;	// falseのつもり。
	table[1] = 999;	// falseのつもり。
	tableViewRe(table);
	for( int ii = 2; 10 > ii; ii++ ) {
		if( table[ii] == 999 ) {
			continue;
		}
		printf("\n-------\n");
		eratosthenesSieveProcessRe(table, ii);
		eratosthenesSieveRe(table);
	}

}


// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
