#include <stdio.h>
#include <string.h>

int main(void)
{
	int asakuno[5];
	int asa[5][3] = {0};
	int kuno[] = {0, 1, 2, 3, 4};
	int aaa[][2] = {0, 1, 2, 3, 4};
	char tomohiro[16] = {0};
	char tomo[16] = "朝来野智博";

	// 以下、ポインタ配列(アルゴリズムの勉強では使わない？)。
	char *pasa[3] = {"朝来野智博", "朝来野", "智博"};
	char asaarray[][16] = {
		"朝来野智博",
		"朝来野",
		"智博",
	};

	asakuno[0] = 20210903;
	asakuno[1] = asakuno[0] + 1;
	asakuno[2] = asakuno[0] + 2;
	asakuno[3] = asakuno[0] + 3;
	asakuno[4] = asakuno[0] + 4;

	// 漢字1文字3バイト？
	strcpy(tomohiro, "朝来野智博");

	for ( int ii = 0; ii < 5; ii++ ) {
		for ( int jj = 0; jj < 3; jj++ ) {
			printf("asa = %d\n", asa[ii][jj]);	// 全て0で初期化されている。
		}
	}

	printf("asakuno = %d\n", asakuno[0]);	// asakuno = 20210903
	printf("asakuno = %d\n", asakuno[1]);	// asakuno = 20210904
	printf("asakuno = %d\n", asakuno[2]);	// asakuno = 20210905
	printf("asakuno = %d\n", asakuno[3]);	// asakuno = 20210906
	printf("asakuno = %d\n", asakuno[4]);	// asakuno = 20210907

	printf("tomohiro = %s\n", tomohiro);	// tomohiro = 朝来野智博
	printf("tomo = %s\n", tomo);	// tomo = 朝来野智博


	// 以下、ポインタ配列。
	printf("pasa = %s\n", pasa[0]);	// pasa = 朝来野智博
	printf("pasa = %s\n", pasa[1]);	// pasa = 朝来野
	printf("pasa = %s\n", pasa[2]);	// pasa = 智博

	printf("asaarray = %s\n", asaarray[0]);	// asaarray = 朝来野智博
}
