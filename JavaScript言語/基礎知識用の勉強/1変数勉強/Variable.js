"use strict";
// test = "テスト代入";	←☆1行目の宣言があるため、letもしくは、varを付けずに変数を用いた場合にエラーになる。


// ダイアログ出力。
console.log("基礎知識5種類の勉強のうち、変数。");

/*
 * 以下、リテラル。
 */
// 以下、文字列リテラル。
console.log("123");
// 以下、整数リテラル。
console.log(456);
// 以下、小数リテラル。
console.log(789.1);

/*
 * 以下、エスケープシーケンス。
 */
console.log("ハローワールドからの\"こんにちは世界。\"");
console.log('ハローワールドからの"こんにちは世界。"');
console.log('ハローワールド。\nそして、\rこんにちは世界。');
// 他のエスケープシーケンス
//		\'
//		\"
//		\\
//		\t
//		\n	←☆Unix系のLF。
//		\r	←☆これは、いつ使う？どう使う？	WindowsのCRLF。

// 以下、テンプレート文字列のひとつ？
console.log(`ハローワールド。
そして、
こんにちは世界。`);

// 以下、テンプレート文字列。
let name = "朝来野智博";
let str  = `私は
${name}
という？`;
console.log(str);

// 以下、定数。
const ASAKUNO = "asakuno";
console.log(ASAKUNO);
// console.log(asakuno);	←☆エラーになる(小文字の変数が無いため)。
// ASAKUNO = "tomohiro";	←☆エラーになる(定数への代入をしたため)。

/*
 * 算術演算
 */
// 足し算
let sum1 = 20211128 + 1;
let sum2 = 20211129 + 2;
console.log(sum1);	// 20211129
console.log(sum2);	// 20211131
sum1 = 6;
sum2 = 5;
let add = sum1 + sum2;
console.log(add);	// 11
// 引き算
let sub = sum1 - sum2;
console.log(sub);	// 1
// 掛け算
let mul = sum1 * sum2;
console.log(mul);	// 30
// 引き算
let div = sum1 / sum2;
console.log(div);	// 1.2
// 余り
sum1 = 111;
sum2 = 10;
let par = sum1 % sum2;
console.log(par);	// 1
// 累乗
sum1 = 2;
sum2 = 3;
let rui = sum1 ** sum2;
console.log(rui);	// 8
rui = sum2 ** sum1;
console.log(rui);	// 9

/*
 * 文字列結合
 */
let str1 = "朝来野";
let str2 = "智博";
str = str1 + str2;
console.log(str);	// 朝来野智博
str1 = "1";
str2 = 2;
str = str1 + str2;
console.log(str);	// 12	←☆文字列のため、3ではなく、1と2が結合される(算術ではない)。
str1 = "1";
str2 = 2;
let sum = 3;
str = str1 + str2 + sum;
console.log(str);	// 123	←☆文字列のため、3ではなく、1と2が結合される(算術ではない)。
str = str1 + (str2 + sum);
console.log(str);	// 15	←☆括弧を付けて優先順位を変えたことで、算術が行われた後に結合された。


/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=javascript noexpandtab: */
