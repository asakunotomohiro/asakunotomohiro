fn main() {
	println!("ブレーク文");

	for ii in 0..10 {
		if ii == 3 {
			break;
		}
		println!("{}回目", ii);
//					0回目
//					1回目
//					2回目
	}

	println!("以上。");
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
