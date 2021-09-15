#include <stdio.h>

/*
 * static修飾子
 *	グローバル変数の修飾として使う場合、他のファイルから使えない。
 *	関数内の内部変数の修飾として使う場合、関数終了後も変数に値が残る。
 *
 */

// 以下の場合、同じファイル内であれば普通に使える。
static int asakuno;

void asakunotomohiro( void ){
	// 関数内で宣言する場合、初回のみ初期化される。
	static int tomohiro = 999;

	printf("asakunotomohiro関数, asakuno：%d\n", asakuno);
	printf("asakunotomohiro関数, tomohiro：%d\n", tomohiro);
	asakuno++;
	tomohiro++;
}

int main(void)
{
	asakunotomohiro();
		// asakunotomohiro関数, asakuno：0	←値を代入していないが、0が表示された。これは、0で初期化されることが保証されるようだな。
		// asakunotomohiro関数, tomohiro：999	←この体を出力した後にインクリメントしている。
	printf("main関数, asakuno：%d\n", asakuno );	// main関数, asakuno：1	←1で表示される。
	asakuno = 20210810;	// ←値書き換え。
	printf("main関数, asakuno：%d\n", asakuno );	// main関数, asakuno：20210810
	asakunotomohiro();
		// asakunotomohiro関数, asakuno：20210810	←main関数で変更した値を呼び出し先の関数で使っている。
		// asakunotomohiro関数, tomohiro：1000	←関数内でのインクリメントが有効に働いているのがわかる。
//	printf("main関数, tomohiro：%d\n", tomohiro );	use of undeclared identifier 'tomohiro'
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
