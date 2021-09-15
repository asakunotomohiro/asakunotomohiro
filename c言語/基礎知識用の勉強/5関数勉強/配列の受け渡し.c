#include <stdio.h>
#include <ctype.h>

// 以下、プロトタイプ宣言。
int hogefunc(int [], int);

int main(void)
{
printf("----------------------------------------\n");
	//int asakuno[5] = {0};	// 全要素数がゼロで初期化されている。
	int asakuno[5] = {100, 200, 300, 400, 500};
	int size = sizeof(asakuno)/sizeof(asakuno[0]);	// 配列の大きさ。
	int ret;

	printf("intの大きさ：%ld\n", sizeof(int));	// intの大きさ：4
	printf("配列の大きさ：%ld\n", sizeof(asakuno));	// 配列の大きさ：20
	printf("配列の要素数：%ld\n", sizeof(asakuno)/sizeof(int));	// 配列の要素数：5	←☆この求め方は非推奨。
	printf("配列の要素数：%ld\n", sizeof(asakuno)/sizeof(asakuno[0]));	// 配列の要素数：5	←☆このやり方で配列の大きさを調べること。

	printf("関数呼び出し開始\n");
	ret = hogefunc(asakuno, size);	// 
	printf("関数呼び出し終了\n");
	printf("戻り値：%d\n", ret);	// 

	// 出力結果：

printf("----------------------------------------\n");

}

// 以下の関数で配列を受け取る。
int hogefunc(int asakuno[], int size) {
	printf("hogefunc関数内\n");

	printf("配列の大きさ(関数内)：%ld\n", sizeof(*asakuno));	// 配列の大きさ(関数内)：4
				// 配列の大きさではなく、データ型の大きさを表している(ポインタなので、配列と認識されていない)。
	printf("配列の要素数(関数内)：%ld\n", sizeof(*asakuno)/sizeof(int));	// 配列の要素数(関数内)：1
	printf("配列の要素数(関数内)：%ld\n", sizeof(*asakuno)/sizeof(asakuno[0]));	// 配列の要素数(関数内)：1
		// 配列の大きさは5つのはずなのに、1つしかない認識をされている。
		// 理由は、ポインタの大きさを示しているだけでしかなく、実際の配列の大きさはC言語で把握できない。

	for ( int ii=0; ii < size; ii++) {
		printf("関数内で配列を表示->要素[%d]の値[%d]\n", ii, asakuno[ii]);
	}
	// 出力結果：
//				関数内で配列を表示->要素[0]の値[100]
//				関数内で配列を表示->要素[1]の値[200]
//				関数内で配列を表示->要素[2]の値[300]
//				関数内で配列を表示->要素[3]の値[400]
//				関数内で配列を表示->要素[4]の値[500]

	printf("配列外の要素数を確認asakuno[5]の値：%d\n", asakuno[5]);	// 配列外の要素数を確認asakuno[5]の値：32766
											// この値は当然変化する。
											// 実行エラーぐらい出して欲しいよ(出さないからこそのC言語だけど)。

	return 20210914 + asakuno[0];
}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab: */
