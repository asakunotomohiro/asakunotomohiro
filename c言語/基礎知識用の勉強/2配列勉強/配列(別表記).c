#include <stdio.h>

int main(void)
{
	int asakuno[5];
	int number = 0;
	int asa[5*3] = {
			10, 11, 12, 13, 14,
			15, 16, 17, 18, 19,
			20, 21, 22, 23, 24,
		};
	int *pasakuno = asakuno;

	// 以下、ポインタ配列(アルゴリズムの勉強では使わない？)。
	char *pasa[3] = {"朝来野智博", "朝来野", "智博"};
	char asaarray[][16] = {
		"朝来野智博",
		"朝来野",
		"智博",
	};

	*(asakuno+0) = 20210903;
	*(asakuno+1) = *(asakuno) + 1;
	*(asakuno+2) = *(asakuno) + 2;
	*(asakuno+3) = *(asakuno) + 3;
	*(asakuno+4) = *(asakuno) + 4;

	for ( int ii = 0; ii < 5; ii++ ) {
		for ( int jj = 0; jj < 3; jj++ ) {
			number = ii * 3 + jj;
			printf("asa = %d\n", asa[number]);	// asa = 10
												// asa = 11
												// asa = 12
												// asa = 13
												// asa = 14
												// asa = 15
												// asa = 16
												// asa = 17
												// asa = 18
												// asa = 19
												// asa = 20
												// asa = 21
												// asa = 22
												// asa = 23
												// asa = 24
		}
	}

	printf("pasakuno = %d\n", *pasakuno );	// pasakuno = 20210903
	// ポインタ加算をした場合、バグを埋め込む基になる。
	pasakuno++;
	printf("pasakuno = %d\n", *pasakuno );	// pasakuno = 20210904
	pasakuno++;
	printf("pasakuno = %d\n", *pasakuno );	// pasakuno = 20210905
	pasakuno++;
	printf("pasakuno = %d\n", *pasakuno );	// pasakuno = 20210906
	// 以下、ポインタ加算後にポインタ変数値を表示する(バグを引き起こすよ・・・)。
	printf("pasakuno = %d\n", *(pasakuno++) );	// pasakuno = 20210907

	printf("asakuno = %d\n", *(asakuno+0) );	// asakuno = 20210903
	printf("asakuno = %d\n", *(asakuno+1) );	// asakuno = 20210904
	printf("asakuno = %d\n", *(asakuno+2) );	// asakuno = 20210905
	printf("asakuno = %d\n", *(asakuno+3) );	// asakuno = 20210906
	printf("asakuno = %d\n", *(asakuno+4) );	// asakuno = 20210907

	pasakuno = asakuno;
	// 以下が妥当だよな(ポインタ変数とは？)。
	printf("改）pasakuno = %d\n", *(pasakuno+0) );	// pasakuno = 20210903
	printf("改）pasakuno = %d\n", *(pasakuno+4) );	// pasakuno = 20210907

	// 以下、ポインタ配列。
	printf("pasa = %s\n", *(pasa+0) );	// pasa = 朝来野智博
	printf("pasa = %s\n", *(pasa+1) );	// pasa = 朝来野
	printf("pasa = %s\n", *(pasa+2) );	// pasa = 智博

	printf("asaarray = %s\n", *(asaarray+0) );	// asaarray = 朝来野智博
}
