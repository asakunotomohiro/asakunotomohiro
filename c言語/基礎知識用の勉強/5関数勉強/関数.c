#include <stdio.h>
#include <ctype.h>

// 以下、プロトタイプ宣言。
int nohead();
float fffunc(int);
void nohogeno(void);
void nohogeint(int);
int inthogeno(void);
int inthogeint(int);

int main(void)
{
printf("----------------------------------------\n");
	int asakuno = 0;
	nohead();	// 引数無し

	float retfffunc;
	retfffunc = fffunc(20210914);	// 引数20210914
	printf("%f\n", retfffunc);	// 99.900002

	// 以下、引数無し-戻り値無し。
	nohogeno();	// 引数無し-戻り値無し

	// 以下、引数あり-戻り値無し。
	nohogeint(asakuno);	// 引数あり(0)-戻り値無し

	// 以下、引数無し-戻り値あり。
	asakuno = inthogeno();	// 引数無し-戻り値あり
	printf("戻り値：%d\n", asakuno);	// 戻り値：20210914

	// 以下、引数あり-戻り値あり。
	asakuno = 20210915;
	asakuno = inthogeint(asakuno);	// 引数あり(20210915)-戻り値あり
	printf("戻り値：%d\n", asakuno);	// 戻り値：40421829

	// 出力結果：

printf("----------------------------------------\n");

}

int nohead (void)
{
	printf("引数無し\n");

	return 0;
}

float fffunc(int asakuno) {
	printf("引数%d\n", asakuno);

	return 99.9;
};

// 以下、引数無し-戻り値無し。
void nohogeno(void) {
	printf("引数無し-戻り値無し\n");
}

// 以下、引数あり-戻り値無し。
void nohogeint(int asakuno) {
	printf("引数あり(%d)-戻り値無し\n", asakuno);
}

// 以下、引数無し-戻り値あり。
int inthogeno(void) {
	printf("引数無し-戻り値あり\n");

	return 20210914;
}

// 以下、引数あり-戻り値あり。
int inthogeint(int asakuno) {
	printf("引数あり(%d)-戻り値あり\n", asakuno);

	return 20210914 + asakuno;
}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab: */
