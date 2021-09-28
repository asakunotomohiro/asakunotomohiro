#include <stdio.h>

int main(void)
{
	// 以下の配列に入っている数字を使い、合計点及び平均点を求める。
	int score[] = {70, 98, 92, 88, 64};
	int scorecount = 0;	// 配列の大きさを格納する。
	int total = 0;		// 合計値用変数。
	int average = 0;	// 平均値用変数。
	float faverage = 0;	// 平均値用変数。

	scorecount = sizeof(score)/sizeof(score[0]);
	for( int ii = 0; scorecount > ii; ii++ ) {
		// 以下、合算。
		total += score[ii];
	}
	average = total / scorecount;	// 平均値を求める。
	faverage = (float)total / scorecount;	// 平均値を求める。

	printf("合計点     ：%d\n", total);		// 合計点     ：412
	printf("平均点int  ：%d\n", average);	// 平均点int  ：82
	printf("平均点float：%f\n", faverage);	// 平均点float：82.400002
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
