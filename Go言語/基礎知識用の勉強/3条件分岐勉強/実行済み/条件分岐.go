package main

import "fmt"

func main() {
	var asakuno = "asakuno"

	if asakuno == "朝来野智博" {
		fmt.Println("朝来野智博")
	} else if asakuno == "asakuno" {
		fmt.Println("asakuno")
	} else{
		fmt.Println("その他")
	}
	// 出力結果：asakuno
	fmt.Println("-----------------------")
}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
