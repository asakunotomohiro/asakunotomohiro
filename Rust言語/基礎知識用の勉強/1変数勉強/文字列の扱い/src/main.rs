// vim: set ts=4 sts=4 sw=4 tw=0 noexpandtab:
//
// $ cargo new 文字列の扱い
// warning: the name `文字列の扱い` contains non-ASCII characters
// Support for non-ASCII crate names is experimental and only valid on the nightly toolchain.
//      Created binary (application) `文字列の扱い` package
// $

fn main() {
	println!("朝来野 智博");

	let asakuno = "asakuno tomohiro";

	let tomohiro = &asakuno[8..];
	println!("出力：{}", tomohiro);	// 出力：tomohiro

	// 下記は、0文字目から6文字目の前までを抜き出すと言う意味(n <= asakuno < m)。
	let tomohiro = &asakuno[0..6];
	println!("出力：{}", tomohiro);	// 出力：asakun
	let tomohiro = &asakuno[0..7];
	println!("出力：{}", tomohiro);	// 出力：asakuno
	let tomohiro = &asakuno[..3];
	println!("出力：{}", tomohiro);	// 出力：asa
	println!("文字数：{}", asakuno.len());	// 文字数：16

	println!("----------------------------");

	// 空文字列の作成
	let mut asakuno = String::new();
//	println!("出力：{}", asakuno);	// error: expected one of `.`, `;`, `?`, `}`, or an operator, found keyword `let`
	asakuno.push_str("Hello ");
	println!("出力：{}", asakuno);	// 出力：Hello 
	asakuno.push_str("World.");
	println!("出力：{}", asakuno);	// 出力：Hello World.

	// フォーマット関数
	let asakuno = format!("{} {}", "asakuno", "tomohiro");
	println!("出力：{}", asakuno);	// 出力：asakuno tomohiro

	// 日本語の扱い。
	let asakuno = "朝来野 智博";
	let tomohiro = &asakuno[..3];	// 野までを抜き出したいが、1文字4バイトなので、無理だ。
	println!("出力：{}", tomohiro);	// 出力：朝	←☆なぜこんなきれいな文字で取得できる？エラーになると思ったが・・・。
//err	let tomohiro = &asakuno[6..12];	// これはエラーになるだろう(なぜ"智"の文字が出てくる？)。
										// どの文字を抜き出すと言うつもりはなく、エラーにするための作業。
//	println!("出力：{}", tomohiro);	// thread 'main' panicked at 'byte index 12 is not a char boundary; it is inside '智' (bytes 10..13) of `朝来野 智博`', main.rs:44:21
	// エラーの続き：note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace
	println!("文字数：{}文字だが、文字数と言うより、バイト数を取得する関数。", asakuno.len());	// 文字数：16文字だが、文字数と言うより、バイト数を取得する関数。

	// 日本語の連結
	let mut asakuno = String::new();
	asakuno.push_str("朝");
	println!("{}", asakuno);	// 朝
	asakuno.push_str("来");
	println!("{}", asakuno);	// 朝来
	asakuno.push_str("野");
	println!("{}", asakuno);	// 朝来野
	asakuno.push_str("智");
	println!("{}", asakuno);	// 朝来野智
	asakuno.push_str("博");
	println!("{}", asakuno);	// 朝来野智博

	// fortma関数での連結
	let asakuno = format!("{} {}", "朝来野", "智博");
	println!("出力：{}", asakuno);	// 出力：朝来野 智博

	let asakuno = "朝来野智博".to_string();
	println!("出力：{}", asakuno);	// 出力：朝来野智博

	// 日本語を正しく扱う。文字列から文字をスライスを正しく行う。
	//		それには、`Vec<T>`と言うベクター型のコレクションを使う。
	let asakuno = "朝来野 智博";
//	let tomohiro = &asakuno[2..5];	// 上記でエラーになったスライス方法。
//	println!("エラー？：{}", tomohiro);
	// thread 'main' panicked at 'byte index 2 is not a char boundary; it is inside '朝' (bytes 0..3) of `朝来野 智博`', main.rs:73:21
	// note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace
		// 正しく行う手順は、
		//		1. 文字列変数をchars()関数と組み合わせる
		//		2. それをfor文で1文字づつ抜き出す。
		//		3. それを新しいベクター型コレクション変数に追加していく。
		//		4. 全てを抜き出し終わる。
		//		5. そこから必要な文字を抜き出す。
		//		6. 抜き出した文字を格納した変数を再びRust言語用の&Stringに戻す。
		//		7. 戻す処理として、forから1文字づつ抜き出す。
		//		8. 抜き出した1文字をString型の変数に追加していく。
		//		9. 追加し終わった変数を表示するなり何なりする。
	let mut vasakunov : Vec<char> = Vec::new();	// この変数にUTF-8文字列から切り出してchar型に変換した文字を追加していく。
	for c in asakuno.chars() {	// 上記2
		vasakunov.push( c );	// 上記3
	}
//	println!("変換後：{}", vasakunov);	// error[E0277]: `Vec<char>` doesn't implement `std::fmt::Display`
	// "野 智"[2..5]を抜き出す。
	let vasakunov = &vasakunov[2..5];	// 上記5	←☆このままで扱いづらい。
	// 再び&Stringに戻す。
	let mut asakuno = String::new();
	for c in vasakunov {	// 上記7
		asakuno.push( *c );	// 上記8
	}
	println!("抜き出し結果：{}", asakuno);	// 抜き出し結果：野 智	←☆上記9
}



// どうでも良いことだが、書籍の誤字発見。
//	コード4-4以降の3段落目の次の句点「つまり11文字めから最後の・・・（以降略」
//	11文字めの"め"は"目"だよね。
