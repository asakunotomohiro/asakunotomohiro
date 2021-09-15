#include <stdio.h>

// グローバル(大域)変数
int asakuno;

void tomohiro( void ){
	printf("tomohiro関数, asakuno：%d\n", asakuno );	// tomohiro関数, asakuno：0
	int asakuno = 10;	// 内部変数
	printf("tomohiro関数, asakuno：%d\n", asakuno );	// tomohiro関数, asakuno：10
	// もしかして、グローバル変数を使えない？
	//	名前が重複していたら使えないとのこと。残念だ。
}

int main(void)
{
	/*
	 * グローバル変数
	 *	ブロック外で定義される変数(ファイル内のどこからでも使える)。
	 *	異なるファイルの変数を使う場合は、`extern`を付ける必要がある。
	 *
	 */
	tomohiro();
	printf("main関数, asakuno：%d\n", asakuno );	// main関数, asakuno：0
	asakuno = 20210810;
	printf("main関数, asakuno：%d\n", asakuno );	// main関数, asakuno：20210810
}
