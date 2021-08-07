package main

import "fmt"

func main() {
	asakuno := "朝来野智博"

	fmt.Println(asakuno == "朝来野智博")  // true
	fmt.Println(asakuno == "朝来野 智博") // false
}
