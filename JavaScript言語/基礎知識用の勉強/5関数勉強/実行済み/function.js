"use strict";


// ダイアログ出力。
console.log("基礎知識5種類の勉強のうち、関数。");

/*
 * 以下、配列宣言。
 */
let asakuno = [ 20220224, 'asakuno', 100005983062102, ];

/*
 * 以下、関数。
 */
function say() {
	// 引数無し-戻り値無し。
	console.log("関数内から出力。");
}
//say();

function insay(arg) {
	// 引数あり-戻り値無し。
	console.log("関数内から出力(" + arg + ")。");
}
insay('引数');

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=javascript noexpandtab: */
