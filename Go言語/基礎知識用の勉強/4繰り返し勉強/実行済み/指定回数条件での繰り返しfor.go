package main

import "fmt"

func main() {
	asakuno := [10]int {20210929, 20210930 };
	count := len(asakuno)

	for ii := 0; count > ii; ii++ {
		fmt.Println(asakuno[ii])
	}
	// 出力結果：
//				20210929
//				20210930
//				0
//				0
//				0
//				0
//				0
//				0
//				0
//				0
	fmt.Println("-----------------------");
}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
