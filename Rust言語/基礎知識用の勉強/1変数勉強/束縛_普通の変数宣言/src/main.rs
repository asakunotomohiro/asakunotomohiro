// vim: set ts=4 sts=4 sw=4 tw=0 noexpandtab:
// $ cargo new 束縛_普通の変数宣言
// warning: the name `束縛_普通の変数宣言` contains non-ASCII characters
// Support for non-ASCII crate names is experimental and only valid on the nightly toolchain.
//      Created binary (application) `束縛_普通の変数宣言` package
// $

fn main() {
//	let const_asakuno = 20210912;	// warning: variable `const_asakuno` is assigned to, but never used
//	const_asakuno = 20210913;		// warning: value assigned to `const_asakuno` is never read
			// letを使った変数宣言の場合、書き換えることが出来ない。

	let mut asakuno = 20210912;	// warning: value assigned to `asakuno` is never read
		// 一度も使わずに値を書き換えたため、警告が出た。
		// println!("出力：{}", asakuno);
		//	これで変数を利用することにより、警告が出なくなる。
	asakuno = 20210913;

	println!("出力：{}", asakuno);
}
