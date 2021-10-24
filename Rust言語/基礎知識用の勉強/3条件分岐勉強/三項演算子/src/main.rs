fn main() {
	println!("三項演算子");

	let asakuno = 10;
	let tomohiro = 20;

	//let ret: i32 = if asakuno < tomohiro {true} else {false};
		//                                  ^^^^ expected `i32`, found `bool`
		// error[E0308]: mismatched types

	//let ret = if asakuno < tomohiro {true} else {false};
	//println!("asakuno<tomohiroの比較結果：{}", ret);
		// 出力結果：asakuno<tomohiroの比較結果：true
		// 求めたのはbool型での戻り値なのだが・・・。

	let ret = if asakuno < tomohiro {1} else {0};
	println!("asakuno<tomohiroの比較結果：{}", ret);
		// 出力結果：asakuno<tomohiroの比較結果：1
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
