package main

import "fmt"

func main() {
	asakuno := "朝来野智博"
	var tomohiro string = "asakuno tomohiro"

	fmt.Println(asakuno, len(asakuno))
	fmt.Println(tomohiro, len(tomohiro))

	fmt.Println(asakuno, asakuno[0])           // 朝来野智博 230
	fmt.Println(tomohiro, tomohiro[0])         // asakuno tomohiro 97
	fmt.Println(tomohiro, string(tomohiro[0])) // asakuno tomohiro a
}
