#include <stdio.h>
#include <stdbool.h>

/*
 * ブール・リテラル
 *	https://www.ibm.com/docs/ja/xl-c-and-cpp-aix/11.1.0?topic=SSGH3R_11.1.0/com.ibm.xlcpp111.aix.doc/language_ref/lit_boolean.html
 *	C99 レベルでは、C は、true および false をヘッダー・ファイル stdbool.h の中でマクロとして定義しています。
 *
 */

int main(void)
{
	bool asakuno = true;
	bool tomohiro = false;

	printf("%d\n", asakuno);	// 1	←trueは1であり、trueではないということか。
	printf("%d\n", tomohiro);	// 0	←falseは0であり、falseではないということか。
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
