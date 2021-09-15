#include <stdio.h>
#include <float.h>

int main(void)
{
	int int_asakuno = 20210830;

	float float_asakuno = 2021.0830;

	printf("int：%d、float：%f\n", int_asakuno, float_asakuno);	// int：20210830、float：2021.083008
	float_asakuno = int_asakuno;	// エラーなくキャストが出来た。
	printf("float：%f\n", float_asakuno);	// float：20210830.000000

	float_asakuno = 2021.0830;
	int_asakuno = float_asakuno;	// エラーなくキャストが出来た。
	printf("int：%d\n", int_asakuno);	// int：2021

	int_asakuno = (int)float_asakuno;	// エラーなくキャストが出来た。
	printf("int：%d\n", int_asakuno);	// int：2021

	int_asakuno = (float)float_asakuno;	// エラーなくキャストが出来た。
	printf("int：%d\n", int_asakuno);	// int：2021

	int_asakuno = (double)float_asakuno;	// エラーなくキャストが出来た。
	printf("int：%d\n", int_asakuno);	// int：2021

	int_asakuno = (char)float_asakuno;	// エラーなくキャストが出来た。
	printf("int：%d\n", int_asakuno);	// int：-27

	return 0;
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
