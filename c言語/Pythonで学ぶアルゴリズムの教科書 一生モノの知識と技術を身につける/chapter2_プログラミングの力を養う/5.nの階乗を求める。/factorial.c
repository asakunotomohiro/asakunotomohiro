#include <stdio.h>

int factorial_sample()
{
	// 10の階乗を求める。
	int total = 10;
	for( int ii = 9; 0 < ii; ii-- ) {
		total *= ii;
	}
	printf("10!：%d", total );

	return 0;
}

int main(void)
{
	factorial_sample();	// 10!：3628800

	return 0;
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
