#include <stdio.h>
#include <ctype.h>

int main(void)
{
	char asakuno;

	asakuno = '1';
	if ( asakuno == '1' ) printf("1との比較で真になった。\n");
	printf("ここには無条件で処理が走る。\n");

	if ( asakuno == '0' ) printf("0との比較で真になった。\n");
	printf("ここには無条件で処理が走る。\n");



printf("----------------------------------------\n");

//	asakuno = 'A';	// [A]はアルファベット
//	asakuno = '1';	// [1]は数値
//	asakuno = '*';	// [*]はその他の文字

	//printf( "文字入力：" );
	//asakuno = fgetc( stdin );

	if( isalpha( asakuno )) {
		printf( "[%c]はアルファベット\n", asakuno);
	} else if ( isdigit( asakuno )) {
		printf( "[%c]は数値\n", asakuno);
	} else {
		printf( "[%c]はその他の文字\n", asakuno);
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
