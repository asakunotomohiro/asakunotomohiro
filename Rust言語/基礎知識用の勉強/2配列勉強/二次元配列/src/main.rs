fn main() {
	println!("Hello, world!");

	let asakuno = [
			[20211003, 20211004, ],
			[20211005, 20211006, ],
		];
	println!("2次元配列の1次元目[0]：{}", asakuno[0][0]);	// 2次元配列の1次元目[0]：20211003
	println!("2次元配列の1次元目[1]：{}", asakuno[0][1]);	// 2次元配列の1次元目[1]：20211004
	println!("2次元配列の2次元目[0]：{}", asakuno[1][0]);	// 2次元配列の2次元目[0]：20211005
	println!("2次元配列の2次元目[1]：{}", asakuno[1][1]);	// 2次元配列の2次元目[1]：20211006
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
