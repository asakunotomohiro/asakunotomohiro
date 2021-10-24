fn main() {
	println!("while文を用いた繰り返し回数指定処理");

	let mut ii = 0;
	while ii < 10 {
		println!("{}回目の実行", ii + 1);
		//ii++;	// error: expected expression, found `+`
		//   ^ expected expression
		ii += 1;
//					1回目の実行
//					2回目の実行
//					3回目の実行
//					4回目の実行
//					5回目の実行
//					6回目の実行
//					7回目の実行
//					8回目の実行
//					9回目の実行
//					10回目の実行
	}

	println!("以上。");
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
