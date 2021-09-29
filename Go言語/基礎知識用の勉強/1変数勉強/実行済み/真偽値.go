package main

import "fmt"

func main() {
	asakuno := "朝来野智博"

	fmt.Println(asakuno == "朝来野智博")  // true
	fmt.Println(asakuno == "朝来野 智博") // false
}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
