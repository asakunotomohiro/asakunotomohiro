"use strict";


// ダイアログ出力。
console.log("基礎知識5種類の勉強のうち、条件分岐。");

/*
 * 以下、配列宣言。
 */
let asakuno = [ 20220217, 20220218, 'asakuno', ];

/*
 * 以下、条件分岐。
 */
if( 20220217 == asakuno[0] ) {
	console.log("if文内容：" + asakuno[0]);
}
// 出力結果。
//			if文内容：20220217

if( 20220218 == asakuno[0] ) {
	console.log("if文内容：" + asakuno[0]);
}
else if( 20220218 == asakuno[1] ) {
	console.log("elseif文内容：" + asakuno[1]);
}
// 出力結果。
//			elseif文内容：20220218

if( 20220218 == asakuno[0] ) {
	console.log("if文内容：" + asakuno[0]);
}
else if( 20220219 == asakuno[1] ) {
	console.log("elseif文内容：" + asakuno[1]);
}
else{
	console.log("else文内容：" + asakuno[2]);
}
// 出力結果。
//			else文内容：asakuno


/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=javascript noexpandtab: */
