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

	if ( asakuno == &asakuno[0] ) {
		printf("asakuno == a[0] は等しい。\n");
	}
	// asakuno == a[0] は等しい。

/*
 *	以下エラーになる。
 *		comparison between pointer and integer ('int *' and 'int')
	if ( asakuno == asakuno[0] ) {
		printf("asakuno == a[0] は等しい。\n");
	}
*/

	if ( asakuno[0] == *(asakuno) ) {
		printf("asakuno == a[0] は等しい。\n");
	}
	// asakuno == a[0] は等しい。

	if ( asakuno[1] == *(asakuno+1) ) {
		printf("asakuno == a[0] は等しい。\n");
	}
	// asakuno == a[0] は等しい。

	if ( asakuno[1] == *(1+asakuno) ) {
		printf("asakuno == a[0] は等しい。\n");
	}
	// asakuno == a[0] は等しい。

}
