fn factorial1() {
	println!("factorial1関数(10の階乗を求める)。");
	let mut total = 10;
	for ii in 1..10 {
		total *= ii;
	}
	println!("10! = {0}", total);	// 10! = 3628800
}

fn main() {
	println!("Hello, world!");
	factorial1();
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
