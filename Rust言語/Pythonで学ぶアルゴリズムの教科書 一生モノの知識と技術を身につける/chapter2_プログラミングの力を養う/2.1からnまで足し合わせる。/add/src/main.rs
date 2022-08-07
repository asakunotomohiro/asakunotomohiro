fn add1() {
	let mut count = 0;
	for ii in 1..11 {
		count += ii;
	}
	println!("合計点 {0}", count);	// 合計点 55
}

fn add2( total: i32 ) -> i32 {
	let mut count = 0;
	let max = total + 1;
	for ii in 1..max {
		count += ii;
	}
	//println!("合計点 {0}", count);	// 合計点 55
	count
}

fn add3( total: i32 ) -> i32 {
	//let max = total + 1;
	//let sumtotal = (1+max) * max / 2;
	let sumtotal = (1+total) * total / 2;

	return sumtotal;
}

fn main() {
	add1();
	let total = add2(10);
	println!("合計点 {0} << add2関数", total);	// 合計点 55 << add2関数
	let total = add3(10);
	println!("合計点 {0} << add3関数", total);	// 合計点 55 << add3関数
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
