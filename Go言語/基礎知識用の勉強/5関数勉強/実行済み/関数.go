package main

import "fmt"

func asakuno() {
	fmt.Println("asakuno関数内からの出力(引数なし-戻り値なし)")
}

func tomohiro1() {
	fmt.Println("asakuno関数内からの出力(引数なし-戻り値なし)")
}

func tomohiro2( arg [10]int ) {
	fmt.Printf("tomohiro2関数内からの出力(引数%d-戻り値なし)\n", arg[0])
}

func tomohiro3() (ret int) {
	ret = 20211001
	fmt.Println("tomohiro3関数内からの出力(引数なし-戻り値あり)")
	return
}

func tomohiro4( arg string ) int {
	fmt.Printf("tomohiro4関数内からの出力(引数%s-戻り値あり)\n", arg)
	return 9784798063997
}

func main() {
	var asakuno [10]int;
	asakuno[0] = 20210929;
	fmt.Println("-----------------------");

	//asakuno()	// エラー
	// # command-line-arguments
	// cannot call non-function asakuno (type [10]int)
	// 以下、関数名と変数名が一致しない場合の呼び出し結果。
	//	asakuno関数内からの出力(引数なし-戻り値なし)

	tomohiro1()
	// asakuno関数内からの出力(引数なし-戻り値なし)
	fmt.Println("-----------------------");

	tomohiro2( asakuno )
	// tomohiro2関数内からの出力(引数20210929-戻り値なし)
	fmt.Println("-----------------------");

	retint := tomohiro3( )
	// tomohiro3関数内からの出力(引数なし-戻り値あり)
	fmt.Println("tomohiro3からの戻り値：", retint)
	// tomohiro3からの戻り値： 20211001
	fmt.Println("-----------------------");

	retstr := tomohiro4( "朝来野智博" )
	// tomohiro4関数内からの出力(引数朝来野智博-戻り値あり)
	fmt.Println("tomohiro4からの戻り値：", retstr)
	// tomohiro4からの戻り値： 9784798063997
	fmt.Println("-----------------------");

}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
