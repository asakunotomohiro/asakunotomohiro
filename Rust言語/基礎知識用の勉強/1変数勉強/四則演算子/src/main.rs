// vim: set ts=4 sts=4 sw=4 tw=0 noexpandtab:

// $ cargo new 四則演算子
// warning: the name `四則演算子` contains non-ASCII characters
// Support for non-ASCII crate names is experimental and only valid on the nightly toolchain.
//      Created binary (application) `四則演算子` package
// $

fn main() {
    println!("朝来野 智博");

    let cal = 20 + 10;
    println!("20 + 10 = {}", cal);	// 20 + 10 = 30
    let cal = 20 - 10;
    println!("20 - 10 = {}", cal);	// 20 - 10 = 10
    let cal = 20 * 10;
    println!("20 * 10 = {}", cal);	// 20 * 10 = 200
    let cal = 20 / 6;
    println!("20 /  6 = {}", cal);	// 20 /  6 = 3
    let cal = 20.0 / 6.0;	// 両方を浮動小数点数にする必要があるようだ。
    println!("20.0/6.0= {}", cal);	// 20.0/6.0= 3.3333333333333335
    let cal = 20 % 6;
    println!("20 %  6 = {}", cal);	// 20 %  6 = 2

}
