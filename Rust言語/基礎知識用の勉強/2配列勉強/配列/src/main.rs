fn main() {
	let asakuno = ["朝来野", "智博"];
	let num = 1;

	println!("[0]：{}", asakuno[0]);	// [0]：朝来野
	println!("[1]：{}", asakuno[num]);	// [1]：智博
	// asakuno[0] = "asakuno";
		// error[E0594]: cannot assign to `asakuno[_]`, as `asakuno` is not declared as mutable
		// 書き換え不可の配列。
	// println!("[2]：{}", asakuno[2]);
		// error: this operation will panic at runtime
		// 配列範囲外はパニック発生。

	println!("asakuno配列の長さ：{}", asakuno.len());	// asakuno配列の長さ：2

	// let array = [];
		// error[E0282]: type annotations needed for `[_; 0]`
		// 空宣言は出来ないようだ(型省略の場合)。

	// let array[10];
		// error: expected one of `:`, `;`, `=`, `@`, or `|`, found `[`
		// 空宣言は出来ないようだ。

	println!("-----------------------------------------");

	// 以下、型指定の配列
	let tomohiro: [i32; 2] = [20211003, 20211004];
	println!("[0]：{}", tomohiro[0]);	// [0]：20211003
	println!("[1]：{}", tomohiro[1]);	// [1]：20211004
	println!("tomohiro配列の長さ：{}", tomohiro.len());	// tomohiro配列の長さ：2

	println!("-----------------------------------------");
	let array: [i64; 0] = [];	// 空配列宣言成功(型指定必須)
	println!("array配列の長さ：{}", array.len());	// array配列の長さ：0

	println!("-----------------------------------------");
	// 以下、　1回の代入で全ての要素を同じ値に設定する(後から変更可能にもしておく)。
	let mut asakunomut: [i32; 5] = [20211003; 5];
	println!("[0]：{}", asakunomut[0]);	// [0]：20211003
	println!("[4]：{}", asakunomut[4]);	// [4]：20211003
	println!("asakunomut配列の長さ：{}", asakunomut.len());	// asakunomut配列の長さ：5
	asakunomut[0] = 20211004;
	asakunomut[4] = 12345678;
	println!("[0]：{}", asakunomut[0]);	// [0]：20211004
	println!("[3]：{}", asakunomut[3]);	// [3]：20211003
	println!("[4]：{}", asakunomut[4]);	// [4]：12345678


	println!("以上。");
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
