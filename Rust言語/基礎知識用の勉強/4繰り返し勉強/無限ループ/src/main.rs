fn main() {
	println!("無限ループ");

	let mut ii = 0;

	while true {
		// warning: denote infinite loops with `loop { ... }`
		println!("while文による無限ループ：{}", ii);
		if ii == 10 {
			break;
		}
		ii += 1;
//					while文による無限ループ：0
//					while文による無限ループ：1
//					while文による無限ループ：2
//					while文による無限ループ：3
//					while文による無限ループ：4
//					while文による無限ループ：5
//					while文による無限ループ：6
//					while文による無限ループ：7
//					while文による無限ループ：8
//					while文による無限ループ：9
//					while文による無限ループ：10
	}

	println!("--------------------------");

	ii = 0;
	loop {
		println!("loop文による無限ループ：{}", ii);
		if ii == 10 {
			break;
		}
		ii += 1;
//					loop文による無限ループ：0
//					loop文による無限ループ：1
//					loop文による無限ループ：2
//					loop文による無限ループ：3
//					loop文による無限ループ：4
//					loop文による無限ループ：5
//					loop文による無限ループ：6
//					loop文による無限ループ：7
//					loop文による無限ループ：8
//					loop文による無限ループ：9
//					loop文による無限ループ：10
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
