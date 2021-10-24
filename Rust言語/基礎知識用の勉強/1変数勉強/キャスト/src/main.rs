// vim: set ts=4 sts=4 sw=4 tw=0 noexpandtab:
//
// $ cargo new キャスト
// warning: the name `キャスト` contains non-ASCII characters
// Support for non-ASCII crate names is experimental and only valid on the nightly toolchain.
//      Created binary (application) `キャスト` package
// $

fn main() {
	println!("朝来野智博");

	let ch = 'A';
	println!("ch is {}", ch);	// ch is A

	let u = ch as u8;	// u8型に変換。
	println!(" u is {}", u);	//  u is 65
			// C言語やC++言語用なのだろう。
			// 当然ながらASCII文字のみ変換可能。

	let ch = u as char;	// char型に変換。
	println!("ch is {}", ch);	// ch is A
			// Rust言語用に、Unicodeの4バイトになっている。

	// 以下、公式サイト。
	//	https://doc.rust-jp.rs/rust-by-example-ja/types/cast.html
	let decimal = 65.4321_f32;
	println!("デシマル：{}", decimal);	// デシマル：65.4321
	let integer = decimal as u8;
	println!("インテージャ：{}", integer);	// インテージャ：65
	let character = integer as char;
	println!("キャラクタ：{}", character);	// キャラクタ：A

	// 以下、配列のキャスト
/*
	let arrayu8 = [20211003u8, 20211004u8, ];
	// let arrayu64 = arrayu8 as u64;	// エラー
			// error[E0605]: non-primitive cast: `[u8; 2]` as `u64`
	unsafe {
		// let arrayu64 = arrayu8 as u64;	// error[E0605]: non-primitive cast: `[u8; 2]` as `u64`
		// let arrayu64 = std::mem::transmute::<[u8; 2], [u64; 2]>(arrayu8);	error[E0512]: cannot transmute between types of different sizes, or dependently-sized types
		// let arrayu64 = std::mem::transmute::<[u8; 2], u64>(arrayu8);	error[E0747]: constant provided when a type was expected
		// let arrayu64 = std::mem::transmute::<[u8; 2], u64>(arrayu8);	error[E0608]: cannot index into a value of type `u64`
		// let arrayu64 = std::mem::transmute::<u8, [u64; 2]>(arrayu8);	error[E0308]: mismatched types
		// let arrayu64 = std::mem::transmute::<u8, u64>(arrayu8[0]);	error[E0512]: cannot transmute between types of different sizes, or dependently-sized types
		let arrayu64 = std::mem::transmute::<[u8; 2], [u64; 2]>(arrayu8);	全くもってエラーばかりで解消できず。
		println!("64ビットに強制変換した結果：{}", arrayu64[0]);
	}
*/
}
