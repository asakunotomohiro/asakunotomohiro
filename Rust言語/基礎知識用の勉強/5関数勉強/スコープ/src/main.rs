fn main() {
	println!("スコープ");

	let asakuno = 20211024;
	println!("ブロック外：{}", asakuno);
		// 出力結果：
//					ブロック外：20211024
	{
		// これができるのは、シャドーイングのおかげ。
		let asakuno = "朝来野智博";
		println!("ブロック内：{}", asakuno);
		// 出力結果：
//					ブロック内：朝来野智博
	}
	println!("ブロック外：{}", asakuno);
		// 出力結果：
//					ブロック外：20211024

	let ret = retiffunc(1);
	println!("関数の戻り値：{}", ret);
		// 出力結果：
//					関数の戻り値：20211024

	println!("以上。")
}

fn retiffunc( asakuno: i32 ) -> i32 {
	let ret = if asakuno > 0 {
		20211024
	} else {
		// このif文の書き方の場合、else文がなければエラーになる。
		0
	};

	ret
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
