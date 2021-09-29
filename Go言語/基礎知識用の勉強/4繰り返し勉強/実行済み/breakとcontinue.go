package main

import "fmt"

func main() {
	asakuno := [...]string {"朝", "来", "野", "智", "博", "20210929" };

	for ii, value := range asakuno {
		fmt.Println(ii, value)
		if ii == 2 {
			break
		}
	}
	// 出力結果：
//				0 朝
//				1 来
//				2 野
	fmt.Println("-----------------------");

	for ii, value := range asakuno {
		if ii == 2 {
			continue
		}
		fmt.Println(ii, value)
	}
	// 出力結果：
//				0 朝
//				1 来
//				3 智
//				4 博
//				5 20210929
	fmt.Println("-----------------------");
}



/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
