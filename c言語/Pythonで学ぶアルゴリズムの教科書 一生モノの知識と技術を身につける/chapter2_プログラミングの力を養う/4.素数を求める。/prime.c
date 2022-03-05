#include <stdio.h>
#include <stdbool.h>	// bool型を使うための読み込み(準備)。

int prime()
{
	// 2から100までの素数を出力する関数。
	for( int ii = 2; ii < 101; ii++ ) {
		int half = ii / 2;	// 商を求める。
		//printf("商？%d\n", half);
		bool flag = true;
		for( int jj = 2; jj < half+1; jj++ ) {
			//printf("ここにくる？%d", ii%jj);
			if( (ii % jj) == 0 ) {
				// 剰余算にて、割り切れるならば、
				flag = false;
				break;
			}
		}
		if( flag == true ) {
			printf("%d,", ii );
		}
	}

	return 0;
}

int main(void)
{
	prime();

	return 0;
}
/*
 * 出力結果。
 * 2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,
 */

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
