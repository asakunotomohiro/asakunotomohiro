package main

import "fmt"

func main() {
	// 以下、配列宣言後に代入。
	var asakuno [3][5]int
	asakuno[2][4] = 20210928
	fmt.Println(asakuno[0])		// [0 0 0 0 0]
	fmt.Println(asakuno[1])		// [0 0 0 0 0]
	fmt.Println(asakuno[2])		// [0 0 0 0 20210928]
	fmt.Println(asakuno[2][4])	// 20210928
	fmt.Println("-----------------------")

	// 以下、配列宣言と同時に代入(初期化)。
	var tomohiro = [3][5]int {{}, {}, {20210928, 20210929, }, }
	fmt.Println(tomohiro[0])		// [0 0 0 0 0]
	fmt.Println(tomohiro[1])		// [0 0 0 0 0]
	fmt.Println(tomohiro[2])		// [20210928 20210929 0 0 0]
	fmt.Println(tomohiro[2][1])		// 20210929
	fmt.Println(tomohiro[2][2])		// 0
	fmt.Println("-----------------------")

	// 以下、別の方法での初期化。
	asakunotomohiro := [10]string {"朝来野", "智博", }
	fmt.Println(asakunotomohiro)		// [朝来野 智博        ]
	fmt.Println(asakunotomohiro[0])		// 朝来野
	fmt.Println(asakunotomohiro[1])		// 智博
	fmt.Println(asakunotomohiro[2])		// 空文字列

	// 以下、要素数をコンパイラ任せにする。
	//tomohiroasakuno := [...][...]string {{"朝来野", "智博"}, }	// use of [...] array outside of array literal
	//fmt.Println(tomohiroasakuno)
	//fmt.Println(tomohiroasakuno[0])
	//fmt.Println(tomohiroasakuno[1])
	//fmt.Println(tomohiroasakuno[0][0])
	//fmt.Println(tomohiroasakuno[1][1])
	//tomohiroasakuno := [...]string {{"朝来野", "智博"}, }	// missing type in composite literal
	//tomohiroasakuno := [...]string {{}, {}, {"朝来野", "智博"}, {}, }	// missing type in composite literal
	//tomohiroasakuno := [...]string {{"", ""}, {"", ""}, {"朝来野", "智博"}, {"", ""}, }	// missing type in composite literal
	//	2次元配列ではコンパイラ任せに出来ないようだな。

	fmt.Println("-------------------")
	// 以下、スライスの2次元配列。
	tomohiroasakuno := [][]string {{"朝来野", "智博"}, }
	fmt.Println(tomohiroasakuno)			// [[朝来野 智博]]
	fmt.Println(tomohiroasakuno[0])			// [朝来野 智博]
	//fmt.Println(tomohiroasakuno[1])		// panic: runtime error: index out of range [1] with length 1
	fmt.Println(tomohiroasakuno[0][0])		// 朝来野
	//fmt.Println(tomohiroasakuno[1][1])	// panic: runtime error: index out of range [1] with length 1

	fmt.Println("以上。")
}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
