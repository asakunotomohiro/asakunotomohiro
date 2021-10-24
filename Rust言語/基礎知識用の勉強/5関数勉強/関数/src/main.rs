fn main() {
	println!("関数");

	// 引数無し-戻り値無し
	nofuncno();
	//	出力結果：
	//			引数無し-戻り値無し

	// 引数あり-戻り値無し
	//		引数1つ。
	nofunc_one(20211023);
	//	出力結果：
	//			引数1つあり(20211023)-戻り値無し

	// 引数あり-戻り値無し
	//		引数2つ。
	nofunc_two("朝来野智博", 20211023 );
	//	出力結果：
	//			引数2つあり(朝来野智博, 20211023)-戻り値無し

	// 引数無し-戻り値あり
	let asakuno = i32funcno();
	println!("{}", asakuno);
	//	出力結果：
	//			20211023

	// 引数あり-戻り値あり
	let tomohiro = stringfunc_two("智博", "朝来野");
	println!("{}", tomohiro);
	//	出力結果：
	//			朝来野智博
}

fn nofuncno() {
	println!("引数無し-戻り値無し");
}

fn nofunc_one( asakuno: i32 ) {
	println!("引数1つあり({})-戻り値無し", asakuno);
}

fn nofunc_two( asakuno: &str, tomohiro: i32) {
	// 第1引数に使っている&記号は、str型の参照を表す。
	// また、この形式で受け取った場合の変数は書き換えできない(変更しない借用(borrow))。
	println!("引数2つあり({}, {})-戻り値無し", asakuno, tomohiro);
}

fn i32funcno() -> i32 {
	println!("引数無し-戻り値あり");

	return 20211023;
}

fn stringfunc_two( asakuno: &str, tomohiro: &str) -> String {
	// 引数に使っている&記号は、str型の参照を表す。
	// また、この形式で受け取った場合の変数は書き換えできない(変更しない借用(borrow))。
	println!("引数2つあり({}, {})-戻り値あり", asakuno, tomohiro);

	format!("{}{}", tomohiro, asakuno)
//	let ret = format!("{}{}", tomohiro, asakuno);
//	ret
}

// fn function( asakuno ) {
//						^ expected one of `:`, `@`, or `|`
//				error: expected one of `:`, `@`, or `|`, found `)`
// 	println!("型指定なし。");
// }

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
