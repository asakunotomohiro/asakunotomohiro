#include <stdio.h>

int bit(void)
{
	printf("%d\n", 255);		// 255
	printf("%d\n", 0b11111111);	// 255	←☆2進数。
	printf("%d\n", 0377);		// 255	←☆8進数。
	printf("%d\n", 0xff);		// 255	←☆16進数。

	// 以下、ビット単位演算子。
	int bit, asakuno=0x55555555;
	printf("%#x\n", asakuno);	// 0x55555555
	bit = asakuno & 0x0000FFFF;	// 論理積
	printf("%#x\n", bit);		// 0x5555
	bit = asakuno | 0x0000FFFF;	// 論理和
	printf("%#x\n", bit);		// 0x5555ffff
	bit = asakuno ^ 0x0000FFFF;	// 排他的論理和
	printf("%#x\n", bit);		// 0x5555aaaa
	bit = ~asakuno;				// 補数(not処理)
	printf("%#x\n", bit);		// 0xaaaaaaaa

	return 0;
}

int main(void)
{
	bit();
}


// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
