fn main() {
	println!("配列を参照渡しすると思ったが、出来なかった。");
	println!("そもそも配列は要素を変更できないため、ベクター型などを使う必要があった");

	let mut vec = vec![20211023, 20211024, 20211025, 20211026, ];

	asakuno(&mut vec);
	for (ii, value) in vec.iter().enumerate() {
		println!("{}:{}", ii, value);
	}

	println!("以上。");
}

fn asakuno( arg: &mut Vec<i32>) {
	for ii in 0..4 {
		//*arg[ii] = 1 + ii;
		//^^^^^^^^
		//		error[E0614]: type `i32` cannot be dereferenced
		//arg[0] = ii;	成功
		//arg[ii] = ii;
		//			^^ expected `i32`, found `usize`
		//			error[E0308]: mismatched types
		//arg[ii] = 1;	// これは完全に間違い。要素数以上を使っていた。
		//		thread 'main' panicked at 'index out of bounds: the len is 4 but the index is 4', main.rs:24:9

		//arg.insert(ii, ii);	// 既存のデータが後ろに追いやられるようだ。
		arg[ii] = 1 + ii as i32;
		// 出力結果：
//					0:1
//					1:2
//					2:3
//					3:4
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
