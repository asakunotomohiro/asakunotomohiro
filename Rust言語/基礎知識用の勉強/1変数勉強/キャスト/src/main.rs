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
}
