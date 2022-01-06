#include <stdio.h>

int addup1()
{
	int total = 0;
	for( int ii = 1; ii < 10; ii++ ) {
		total += ii;
	}

	return total;
}

int main(void)
{
	int ret = addup1();
	printf("1から10までの加算結果：%d\n", ret);

	return 0;
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
