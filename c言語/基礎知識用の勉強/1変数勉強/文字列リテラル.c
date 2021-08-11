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
