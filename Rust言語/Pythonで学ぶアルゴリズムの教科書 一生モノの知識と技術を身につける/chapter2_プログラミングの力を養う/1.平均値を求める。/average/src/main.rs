fn main() {
	let score = [
				70,
				98,
				92,
				88,
				64,
			];
	let mut total = 0;
	for ii in 0..score.len() {
		total += score[ii];
	}
	let average = total as f32 / score.len() as f32;
	println!("合格点{}", total);	// 
	println!("平均点{}", average);	// 
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
