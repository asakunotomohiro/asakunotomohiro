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

	// 暗黙の型変換可能時に変換するやり方(C++のみ)。
//	int_asakuno = static_cast<char>(float_asakuno);	// エラー発生(Cには存在しないため)
		// expected expression
		// use of undeclared identifier 'static_cast'

	// 明示的キャスト。
//	int_asakuno = reinterpret_cast<char>(float_asakuno);	// エラー発生(Cには存在しないため)
		// expected expression
		// use of undeclared identifier 'reinterpret_cast'

}
