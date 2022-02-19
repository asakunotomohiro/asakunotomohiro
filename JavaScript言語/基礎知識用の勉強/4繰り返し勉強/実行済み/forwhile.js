"use strict";


// ダイアログ出力。
console.log("基礎知識5種類の勉強のうち、繰り返し。");

/*
 * 以下、配列宣言。
 */
let asakuno = [ 20220219, 20220220, 'asakuno', ];

/*
 * 以下、for文。
 */
for( let ii = 0; asakuno.length > ii; ii++ ) {
	console.log("for繰り返し" + ii);
}
// 出力結果。

/*
 * 以下、for文の入れ子。
 */
for( let ii = 0; asakuno.length > ii; ii++ ) {
	for( let jj = 0; asakuno.length > jj; jj++ ) {
		console.log("ii[" + ii + "], jj[" + jj + "]" );
	}
}
// 出力結果。
//			ii[0], jj[0]
//			ii[0], jj[1]
//			ii[0], jj[2]
//			ii[1], jj[0]
//			ii[1], jj[1]
//			ii[1], jj[2]
//			ii[2], jj[0]
//			ii[2], jj[1]
//			ii[2], jj[2]


/*
 * 以下、break文。
 */
for( let ii = 0; asakuno.length > ii; ii++ ) {
	if( ii === 2 ) {
		break;
	}
	console.log("ii[" + ii + "]" );
}
// 出力結果。
//			ii[0]
//			ii[1]


/*
 * 以下、continue文。
 */
for( let ii = 0; asakuno.length > ii; ii++ ) {
	if( ii === 1 ) {
		continue;
	}
	console.log("ii[" + ii + "]" );
}
// 出力結果。
//			ii[0]
//			ii[2]

/*
 * 以下、while文。
 */
let num = 0;
while( num < 3 ) {
	console.log("while繰り返し[" + asakuno[num] + "]" );
	num++;
}
// 出力結果。
//			while繰り返し[20220219]
//			while繰り返し[20220220]
//			while繰り返し[asakuno]


/*
 * 以下、無限ループ(for文)。
 */
//for( let ii = 0;; ii++ ) {
//	console.log("for繰り返し[" + ii + "]" );
//}
// 出力結果。


/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=javascript noexpandtab: */
