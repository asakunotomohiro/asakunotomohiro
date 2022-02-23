#include <stdio.h>

int factorial1(const int MAX)
{
	// 階乗を求める関数。
	//	この関数は、サンプル関数に引数を受け取る形にしただけのもの。
	int count = 1;
	for( int ii = MAX; ii > 0; ii-- ) {
		count *= ii;
	}

	return count;
}

int factorial2(int count)
{
	// 階乗を求める関数。
	int total = 0;
	if( count == 0 ) {
		total = 1;
	}
	else{
		total = count * factorial2(count - 1);
	}

	return total;
}

int factorial_sample()
{
	// 10の階乗を求める。
	int total = 10;
	for( int ii = 9; 0 < ii; ii-- ) {
		total *= ii;
	}
	printf("10!：%d\n", total );

	return 0;
}

int recursion_sample(int count)
{
	if ( count > 0 ) {
		recursion_sample( count - 1 );
	}
	printf("再帰関数%d回目の実行\n", count );

	return 0;
}

int main(void)
{
	factorial_sample();		// 10!：3628800
	recursion_sample(10);	// 再帰
		/* 出力結果：
			再帰関数0回目の実行
			再帰関数1回目の実行
			再帰関数2回目の実行
			再帰関数3回目の実行
			再帰関数4回目の実行
			再帰関数5回目の実行
			再帰関数6回目の実行
			再帰関数7回目の実行
			再帰関数8回目の実行
			再帰関数9回目の実行
			再帰関数10回目の実行
		*/

	int factorial = 0;
	factorial = factorial1(10);	// ルール1に従った階乗を求める関数呼び出し。
	printf("10!：%d\n", factorial );	// 10!：3628800

	factorial = factorial2(10);	// ルール2に従った階乗を求める関数呼び出し。
	printf("10!：%d\n", factorial );	// 10!：3628800

	return 0;
}


// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
