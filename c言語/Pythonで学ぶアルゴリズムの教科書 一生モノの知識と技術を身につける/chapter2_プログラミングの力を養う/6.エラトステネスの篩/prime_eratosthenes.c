#include <stdio.h>

int sievingTable(int (*table)[10])
{
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

int tableView(int (*table)[10])
{
	// 篩いテーブル内容表示。
	for( int ii=0; 10>ii; ii++ ) {
		for( int jj=0; 10>jj; jj++ ) {
			printf("%3d", table[ii][jj]);
		}
		printf("\n");
	}

	return 0;
}

int eratosthenes_sieve()
{

	return 0;
}

int main(void)
{
	int table[10][10];
	sievingTable(table);
	printf("\n-------\n");
	//tableView(table);

	eratosthenes_sieve();
}


// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
