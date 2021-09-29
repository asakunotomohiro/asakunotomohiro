package main

import "fmt"

func main() {
	asakuno := [5]int {20210929, 20210930 };
	count := len(asakuno)
	ii := 0

	for count > ii {
		fmt.Println(ii, asakuno[ii])
		ii++
	}
	// 出力結果：
//				0 20210929
//				1 20210930
//				2 0
//				3 0
//				4 0
	fmt.Println("-----------------------");
}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
