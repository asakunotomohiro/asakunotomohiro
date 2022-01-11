fn main() {
	let score = [
				70,
				98,
				92,
				88,
				64,
			];
	let mut total = 0;
	for value in score {
		total += value;
	}
	//let average = total as f32 / score.len();
	//	error[E0277]: cannot divide `f32` by `usize`
	//	error: aborting due to previous error
	//	For more information about this error, try `rustc --explain E0277`.
	//let mut average = total as f32 / score.len() as f32;
	//	warning: variable does not need to be mutable
	//	warning: 1 warning emitted
	let average = total as f32 / score.len() as f32;
	println!("合計点 {0}", total);		// 合計点 412
	println!("平均点 {0}", average);	// 平均点 82.4
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
