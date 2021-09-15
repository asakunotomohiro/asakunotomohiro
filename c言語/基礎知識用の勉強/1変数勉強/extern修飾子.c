#include <stdio.h>

int tomohiro;

// 以下、extern修飾子のテスト用.c
void func_asakuno( void );

/*
 * extern修飾子
 *	他のファイルや他のブロックで定義されているグローバル変数を使えるようにするための修飾子。
 *	修飾子を使わない場合、内部変数扱いになる(今までの変数宣言だからだよね)。
 *
 */

// 以下の場合、同じファイル内であれば普通に使える。
static int asakuno;

void func_tomohiro( void ){
//	static int tomohiro = 999;

	printf("asakunotomohiro関数, asakuno：%d\n", asakuno);
	printf("asakunotomohiro関数, tomohiro：%d\n", tomohiro);
	asakuno++;
	tomohiro++;
}

int main(void)
{
	func_asakuno();
		// asakuno関数, tomohiro：0
		// asakuno関数, tomohiro：20210810
	printf("main関数, asakuno：%d\n", asakuno );	// main関数, asakuno：0
	asakuno = 20210810;
	printf("main関数, asakuno：%d\n", asakuno );	// main関数, asakuno：20210810
	func_tomohiro();
		// asakunotomohiro関数, asakuno：20210810
		// asakunotomohiro関数, tomohiro：20210810
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
