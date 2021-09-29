package main

import "fmt"

func tomohiro( asakuno [1]string ) (ret int) {
	ret = 20211001
	fmt.Printf("関数内-文字列：%s\n", asakuno[0])
	ret++
	fmt.Println(scope)
	return
}

var scope = "2021.09.30"
// 変数宣言時の:=は使えなかった。エラーになった。
//	syntax error: non-declaration statement outside function body

func main() {
	var asakuno [1]string;
	asakuno[0] = "朝来野智博";
	fmt.Println("-----------------------");

	retstr := tomohiro( asakuno )
	// 関数内-文字列：朝来野智博
	// 2021.09.30
	fmt.Println("tomohiro4からの戻り値：", retstr)
	// tomohiro4からの戻り値： 20211002
	fmt.Println("-----------------------");
	//fmt.Println(ret)
	//	undefined: ret
	// 当たり前だが、tomohiro関数内の変数は呼び出せない。
	fmt.Println("-----------------------");
	{
		asakunoint := 20210930
		fmt.Println(asakunoint)
		// 20210930
	}
	//fmt.Println(asakunoint)
	//	undefined: asakunoint
	// これもブロック外から呼び出せない。
	fmt.Println("-----------------------");
	fmt.Println(scope)
	// 2021.09.30
	fmt.Println("-----------------------");
}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
