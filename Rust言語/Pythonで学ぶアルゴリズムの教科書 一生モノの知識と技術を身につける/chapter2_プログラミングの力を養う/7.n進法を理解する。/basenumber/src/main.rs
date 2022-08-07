fn main() {
	let bin = 0b11111111;	// 2進数。
	let oct = 0o377;	// 8進数。
	let hex = 0xff;	// 16進数。

	println!("10進数 {},{},{}", bin, oct, hex);	// 255,255,255
	println!("16進数 {:x},{:x},{:x}", bin, oct, hex);	// ff,ff,ff
	println!("8進数 {:o},{:o},{:o}", bin, oct, hex);	// 377,377,377
	println!("2進数 {:b},{:b},{:b}", bin, oct, hex);	// 11111111,11111111,11111111
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
