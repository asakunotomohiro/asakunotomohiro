/*fn sampleforeach() {
	for ii in 1..3 {
		for jj in 1..3 {
			println!("ii[{0:>2}], jj[{1:<2}]", ii, jj);
		}
	}
}
	呼び出さない関数は定義できないようだ・・・消すのが面倒くさいぞ。
*/

/*fn samplewhile() {
	let mut ii = 1;
	while ii < 3 {
		let mut jj = 1;
		while jj < 3 {
			println!("ii[{0:>02}], jj[{1:^3}]", ii, jj);
			jj += 1;
		}
		ii += 1;
	}
}
*/

fn kuku1() {
	for ii in 1..10 {
		for jj in 1..10 {
			println!("{0}x{1}={2:>2}", ii, jj, ii*jj);
		}
	}
}

fn main() {
	//sampleforeach();
	//samplewhile();
	kuku1();
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
