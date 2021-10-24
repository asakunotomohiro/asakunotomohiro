fn main() {
	println!("引数を参照渡しする(宣言が複雑になり、通常はやってはならない)。");

	//let mut asakuno = "asakuno";	// &str型
	//let mut asakuno = String::new();	// String型
	//let mut asakuno = String::new("asakuno");	// String型
	//					^^^^^^^^^^^ --------- supplied 1 argument
	//					error[E0061]: this function takes 0 arguments but 1 argument was supplied

	let mut asakuno = String::from("asakuno");	// String型

	println!("{}", asakuno);	// asakuno
	asakunotomohiro( &mut asakuno );
	println!("{}", asakuno);	// 朝来野

	println!("以上")
}

fn asakunotomohiro( tomohiro: &mut String) {
	*tomohiro = String::from("朝来野");
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
