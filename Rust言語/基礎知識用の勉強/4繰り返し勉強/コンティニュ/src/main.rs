fn main() {
	println!("コンティニュ文");

	for ii in 0..10 {
		if ii % 2 == 0 {
			continue;
		}
		println!("{}回目", ii);
//					1回目
//					3回目
//					5回目
//					7回目
//					9回目
	}

	println!("以上。");
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
