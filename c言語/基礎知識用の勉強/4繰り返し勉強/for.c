#include <stdio.h>
#include <ctype.h>

int main(void)
{
printf("----------------------------------------\n");
	int asakuno = 0;

	for ( int ii = 0; ii < 5; ii++ ) {
		printf("asakuno：%d\t%d回目\n", asakuno, ii);
	}
	// 出力結果：
//			asakuno：0	0回目
//			asakuno：0	1回目
//			asakuno：0	2回目
//			asakuno：0	3回目
//			asakuno：0	4回目


printf("----------------------------------------\n");

}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
