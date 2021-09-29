package main

import "fmt"

func main() {
	// 以下、配列宣言後に代入。
	var asakuno [10]int;
	asakuno[0] = 20210928;
	fmt.Println(asakuno[0]);	// 20210928
	fmt.Println(asakuno[1]);	// 0
	// fmt.Println(asakuno[10]);	// # command-line-arguments	invalid array index 10 (out of bounds for 10-element array)
	fmt.Println("-----------------------");

	// 以下、配列宣言と同時に代入(初期化)。
	var tomohiro = [10]int {20210928, 20210929 };
	fmt.Println(tomohiro[0]);	// 20210928
	fmt.Println(tomohiro[1]);	// 20210929
	fmt.Println(tomohiro[9]);	// 0
	// fmt.Println(tomohiro[10]);	// 上記と同様のエラー。

	// 以下、初期化方法失敗。
	// var tomohiro2[10] = int {20210928, 20210929 };	// syntax error: unexpected =, expecting type
	// var tomohiro2[10] int = {20210928, 20210929 };	// syntax error: unexpected {, expecting expression
	// var tomohiro2 [10]int {20210928, 20210929 };		// syntax error: unexpected { at end of statement

	// 以下、別の方法での初期化。
	asakunotomohiro := [10]string {"朝来野", "智博", };
	fmt.Println(asakunotomohiro);		// [朝来野 智博        ]
	fmt.Println(asakunotomohiro[0]);	// 朝来野
	fmt.Println(asakunotomohiro[1]);	// 智博
	fmt.Println(asakunotomohiro[2]);	// 空文字列

	// 以下、要素数をコンパイラ任せにする。
	tomohiroasakuno := [...]string {"朝来野", "智博", };
	fmt.Println(tomohiroasakuno);		// [朝来野 智博]
	fmt.Println(tomohiroasakuno[0]);	// 朝来野
	fmt.Println(tomohiroasakuno[1]);	// 智博
	// fmt.Println(tomohiroasakuno[2]);	// invalid array index 2 (out of bounds for 2-element array)

	// 以下、配列ではなくスライス扱いになる。
	sliceasakuno := []string {"スライス", "asakuno", };
	fmt.Println(sliceasakuno);		// [スライス asakuno]
	fmt.Println(sliceasakuno[0]);	// スライス
	fmt.Println(sliceasakuno[1]);	// asakuno
	// fmt.Println(sliceasakuno[2]);	// panic: runtime error: index out of range [2] with length 2
}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
