"use strict";


// ダイアログ出力。
console.log("基礎知識5種類の勉強のうち、配列。");

/*
 * 以下、配列宣言。
 */
let asakuno = [20220129, 20220130, 20220131, 20220132, 20220133, 20220134, ];


console.log("配列要素1番目：" + asakuno[0]);
console.log("配列要素2番目：" + asakuno[1]);
console.log("配列要素3番目：" + asakuno[2]);
console.log("配列要素4番目：" + asakuno[3]);
console.log("配列要素5番目：" + asakuno[4]);
console.log("配列要素6番目：" + asakuno[5]);
console.log("配列要素7番目：" + asakuno[6]);
// 出力結果。
//			配列要素1番目：20220129
//			配列要素2番目：20220130
//			配列要素3番目：20220131
//			配列要素4番目：20220132
//			配列要素5番目：20220133
//			配列要素6番目：20220134
//			配列要素7番目：undefined

/*
 * 以下、配列への代入。
 */
asakuno[0] = "朝来野智博";
asakuno[6] = "asakuno";
console.log("配列要素変更1番目：" + asakuno[0]);
console.log("配列要素追加7番目：" + asakuno[6]);
// 出力結果。
//			配列要素変更1番目：朝来野智博
//			配列要素追加7番目：asakuno

/*
 * 以下、二次元配列。
 */
let tomohiro = [
			['asakuno', "tomohiro", ],
			[4401, 616432, 7, ],
			["朝来野", "智博", ],
		];
console.log("2次元配列[0][0]：" + tomohiro[0][0]);
console.log("2次元配列[1][2]：" + tomohiro[1][2]);
console.log("2次元配列[2][1]：" + tomohiro[2][1]);
// 以下、出力結果。
//			2次元配列[0][0]：asakuno
//			2次元配列[1][2]：7
//			2次元配列[2][1]：智博

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=javascript noexpandtab: */
