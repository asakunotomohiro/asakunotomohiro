package main

import "fmt"

func main() {
	asakuno := 20210807
	var tomohiro = 1813

	var (
		朝来野 float32 = 35.64849
		智博  float64 = 139.718305
	)

	const 朝来野智博, go勉強 = "朝来野 智博", "頑張るぞぉ"

	fmt.Println(asakuno, tomohiro)                 // 出力結果：20210807 1813
	fmt.Printf("今日は%vです。\n桁を増やして%vです。\n", 朝来野, 智博) // 出力結果：今日は20210805です。逆から見れば50801202です。
	fmt.Print(朝来野智博, go勉強)                         // 出力結果：朝来野 智博頑張るぞぉ
}
