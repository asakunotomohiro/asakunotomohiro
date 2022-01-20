#include <stdio.h>

int kuku_tate()
{
	for( int ii = 1; ii < 10; ii++ ) {
		for( int jj = 1; jj < 10; jj++ ) {
			printf("%2d x %2d = %2d", ii, jj, ii*jj);
			printf("\n");
		}
		printf("\n");
	}

	return 0;
}

int kuku_format()
{
	for( int ii = 1; ii < 10; ii++ ) {
		for( int jj = 1; jj < 10; jj++ ) {
			printf("%2dx%d=%2d", ii, jj, ii*jj);
		}
		printf("\n");
	}

	return 0;
}

int kuku()
{
	for( int ii = 1; ii < 10; ii++ ) {
		for( int jj = 1; jj < 10; jj++ ) {
			//printf("%2dx%d=%2d", ii, jj, ii*jj);
			printf("%3d", ii*jj);
		}
		printf("\n");
	}

	return 0;
}

int main(void)
{
	// kuku_tate();	←☆縦に並ぶ出力結果になり、見にくいため封印する(出力結果も消す)。
	// kuku_format();	←☆私の求めているものと異なるため封印する(出力結果も消す)。
	kuku();

	return 0;
}
/*
 * 出力結果。
		  1  2  3  4  5  6  7  8  9
		  2  4  6  8 10 12 14 16 18
		  3  6  9 12 15 18 21 24 27
		  4  8 12 16 20 24 28 32 36
		  5 10 15 20 25 30 35 40 45
		  6 12 18 24 30 36 42 48 54
		  7 14 21 28 35 42 49 56 63
		  8 16 24 32 40 48 56 64 72
		  9 18 27 36 45 54 63 72 81
 */

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
