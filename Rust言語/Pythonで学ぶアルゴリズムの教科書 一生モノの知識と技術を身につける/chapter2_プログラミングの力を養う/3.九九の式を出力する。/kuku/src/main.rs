fn sampleforeach() {
	for ii in 1..3 {
		for jj in 1..3 {
			println!("ii[{0:>2}], jj[{1:<2}]", ii, jj);
		}
	}
}

fn main() {
	sampleforeach();
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
