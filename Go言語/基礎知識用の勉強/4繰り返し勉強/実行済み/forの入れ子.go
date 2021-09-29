package main

import "fmt"

func main() {
	asakuno := [...]int {20210929, 20210930 };
	tomohiro := [...]string {"asakuno", "tomohiro" };

	for ii, value := range asakuno {
		for jj, valuf := range tomohiro {
			fmt.Printf("ii：%d-jj：%d, asakuno[%d], tomohiro[%s]\n", ii, jj, value, valuf)
		}
	}
	// 出力結果：
//				ii：0-jj：0, asakuno[20210929], tomohiro[asakuno]
//				ii：0-jj：1, asakuno[20210929], tomohiro[tomohiro]
//				ii：1-jj：0, asakuno[20210930], tomohiro[asakuno]
//				ii：1-jj：1, asakuno[20210930], tomohiro[tomohiro]
	fmt.Println("-----------------------");
}

/* vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=go noexpandtab: */
