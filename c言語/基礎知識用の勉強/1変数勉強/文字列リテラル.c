#include <stdio.h>

/*
 * 文字列リテラル
 *
 */
#define ASAKUNO "ASAKUNO TOMOHIRO"

int main(void)
{
	printf("%s\n", ASAKUNO);	// ASAKUNO TOMOHIRO
	char *tomohiro = ASAKUNO;
	tomohiro[0] = 'a';
	printf("%s\n", ASAKUNO);	// そもそも動かなくなり、表示がなされない(なぜ？)。
			// 要は、環境依存なのだろう。

}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
