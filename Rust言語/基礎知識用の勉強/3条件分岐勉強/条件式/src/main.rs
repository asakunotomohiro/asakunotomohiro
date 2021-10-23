fn main() {
	println!("条件分岐");

	let mut asakuno = 10;
	let mut tomohiro = 10;
	if asakuno == tomohiro {
		println!("asakuno==tomohiro");
		// 出力結果：asakuno==tomohiro
	}

	asakuno = 20;
	tomohiro = 30;
	if asakuno < tomohiro {
		println!("asakuno<tomohiro");
		// 出力結果：asakuno<tomohiro
	}

	if asakuno != tomohiro {
		println!("asakuno!=tomohiro");
		// 出力結果：asakuno!=tomohiro
	}

	asakuno = 20;
	tomohiro = 20;

	if asakuno <= tomohiro {
		println!("asakuno<=tomohiro");
		// 出力結果：asakuno<=tomohiro
	}


	asakuno = 20;
	tomohiro = 30;
	if comparison( asakuno, tomohiro) {
		println!("関数の戻り値(bool)を条件式とした。");
		// 出力結果：関数の戻り値(bool)を条件式とした。
	}

	if asakuno == 20 || tomohiro == 20 {
		println!("asakuno==20||tomohiro==20");
		// 出力結果：asakuno==20||tomohiro==20
	}

	if asakuno == 20 && tomohiro == 30 {
		println!("asakuno==20&&tomohiro==30");
		// 出力結果：asakuno==20&&tomohiro==30
	}
}

fn comparison( x: i32, y: i32 ) -> bool {
	x < y
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
