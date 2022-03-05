#include <stdio.h>

int bit(void)
{
	printf("%d\n", 255);		// 255
	printf("%d\n", 0b11111111);	// 255	←☆2進数。
	printf("%d\n", 0377);		// 255	←☆8進数。
	printf("%d\n", 0xff);		// 255	←☆16進数。

	return 0;
}

int main(void)
{
	bit();
}


// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
