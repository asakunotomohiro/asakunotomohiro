#include <stdio.h>
#include <string.h>

int main(void)
{
	int asakuno[5][3] = {
			10, 11, 12, 13, 14,
			15, 16, 17, 18, 19,
			20, 21, 22, 23, 24,
		};
			// asakuno = 10
			// asakuno = 11
			// asakuno = 12
			// asakuno = 13
			// asakuno = 14
			// asakuno = 15
			// asakuno = 16
			// asakuno = 17
			// asakuno = 18
			// asakuno = 19
			// asakuno = 20
			// asakuno = 21
			// asakuno = 22
			// asakuno = 23
			// asakuno = 24

	int tomohiro[5][3] = {0};
	int *ptomohiro;
	int **pptomohiro;
	int *ptomohiroArray[5];

// 以下失敗。
//	tomohiro = asakuno;	err：array type 'int [5][3]' is not assignable
//	ptomohiro = asakuno;	err：incompatible pointer types assigning to 'int *' from 'int [5][3]' [-Wincompatible-pointer-types]
//	pptomohiro = asakuno;	err：incompatible pointer types assigning to 'int **' from 'int [5][3]' [-Wincompatible-pointer-types]
//	ptomohiroArray = asakuno;	err：array type 'int *[3]' is not assignable

	for ( int ii = 0; ii < 5; ii++ ) {
		for ( int jj = 0; jj < 3; jj++ ) {
			printf("asakuno = %d\n", asakuno[ii][jj]);	// 
		}
	}

	for ( int ii = 0; ii < 5; ii++ ) {
		for ( int jj = 0; jj < 3; jj++ ) {
			tomohiro[ii][jj] = asakuno[ii][jj];
			printf("tomohiro = %d\n", tomohiro[ii][jj]);	// 
		}
	}

	tomohiro[1][2] = 999;	// asakuno配列には影響ない(当たり前)。
	for ( int ii = 0; ii < 5; ii++ ) {
		for ( int jj = 0; jj < 3; jj++ ) {
			printf("asakuno  = %d\n", asakuno[ii][jj]);
			printf("tomohiro = %d\n", tomohiro[ii][jj]);
			// 以下、出力結果の抜粋。
			// asakuno  = 14
			// tomohiro = 14
			// asakuno  = 15
			// tomohiro = 999
			// asakuno  = 16
			// tomohiro = 16
		}
	}

	printf("------------------------------------------\n");
	// ゼロクリア
	for ( int ii = 0; ii < 5; ii++ ) {
		for ( int jj = 0; jj < 3; jj++ ) {
			tomohiro[ii][jj] = 0;
			printf("tomohiro = %d\n", tomohiro[ii][jj]);	// 
		}
	}

	memcpy((void *)tomohiro, (void *)asakuno, sizeof(asakuno));

	for ( int ii = 0; ii < 5; ii++ ) {
		for ( int jj = 0; jj < 3; jj++ ) {
			printf("asakuno = %d　　", asakuno[ii][jj]);	// 
			printf("tomohiro = %d\n", tomohiro[ii][jj]);	// 
		}
	}

	printf("以上。");
}
