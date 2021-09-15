#include <stdio.h>

// 本ファイルは、extern修飾子.cから呼ばれる。

/*
 * extern修飾子
 *	他のファイルや他のブロックで定義されているグローバル変数を使えるようにするための修飾子。
 *	修飾子を使わない場合、内部変数扱いになる(今までの変数宣言だからだよね)。
 *
 */

void func_asakuno( void ){
	extern int tomohiro;

	printf("asakuno関数, tomohiro：%d\n", tomohiro);
	tomohiro = 20210810;
	printf("asakuno関数, tomohiro：%d\n", tomohiro);
}
