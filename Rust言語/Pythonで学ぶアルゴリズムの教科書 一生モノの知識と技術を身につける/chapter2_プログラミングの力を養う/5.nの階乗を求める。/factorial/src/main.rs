fn factorial1( num: i32 ) -> i32 {
	let mut total = num;
	for ii in 1..10 {
		total *= ii;
	}

	return total;
}


fn factorial2( num: i32 ) -> i32 {
	//println!("factorial2関数(再帰関数にて、10の階乗を求める)。");
	//let mut total = 0;	// warning: value assigned to `total` is never read	←☆意味が分からない。
	let mut _total = 0;
	if num == 0 {
		// total = 1;
		_total = 1;
	}
	else{
		// total = num * factorial2(num - 1);
		_total = num * factorial2(num - 1);
	}

	return _total;
}

fn main() {
	//println!("Hello, world!");
	println!("factorial1関数(for文での10の階乗を求める)。");
	let mut ret = factorial1(10);
	println!("for文での10! = {0}", ret);	// 10! = 3628800
	println!("-----");
	println!("factorial2関数(再帰呼び出しでの10の階乗を求める)。");
	ret = factorial2(10);
	println!("再帰関数での10の階乗を求めた結果：{}", ret);	// 3628800
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
