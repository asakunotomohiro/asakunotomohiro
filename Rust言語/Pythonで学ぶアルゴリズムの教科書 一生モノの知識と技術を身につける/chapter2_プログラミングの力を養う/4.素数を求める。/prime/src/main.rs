fn main() {
	for ii in 2..101 {
		let half = ii / 2;	// 商を求める(halfは、書き換えない変数)。
		let mut flag = true;
		let mut jj = 2;
		while jj < half+1 {
			if (ii % jj) == 0 {
				flag = false;
				break;
			}
			jj += 1;
		}
		if flag == true {
			print!("{0},", ii );
		}
	}
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
