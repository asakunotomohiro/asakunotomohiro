package main

import "fmt"

func main() {
	var asakuno int32 = 20210916
	var tomohiro int64 = 20210917
	var fasa float32 = 2021.0916

	fmt.Println("代入前の値：", asakuno, tomohiro, fasa) // 代入前の値： 20210916 20210917 2021.0916
	// tomohiro = asakuno	// ./キャスト.go:7:11: cannot use asakuno (type int32) as type int64 in assignment
	tomohiro = int64(asakuno)                      // int32からint64にキャスト成功
	fmt.Println("代入後の値：", asakuno, tomohiro, fasa) // 代入後の値： 20210916 20210916 2021.0916

	// fasa = asakuno	// ./キャスト.go:15:7: cannot use asakuno (type int32) as type float32 in assignment
	fasa = float32(asakuno)
	fmt.Println("代入後の値：", asakuno, tomohiro, fasa) // 代入後の値： 20210916 20210916 2.0210916e+07

}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
