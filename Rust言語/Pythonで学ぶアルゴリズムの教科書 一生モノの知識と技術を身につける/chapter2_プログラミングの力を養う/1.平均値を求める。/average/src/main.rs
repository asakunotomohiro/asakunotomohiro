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
	let average = total as f32 / score.len() as f32;
	println!("合格点 {0}", total);		// 合格点412
	println!("平均点 {0}", average);	// 平均点82.4
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
