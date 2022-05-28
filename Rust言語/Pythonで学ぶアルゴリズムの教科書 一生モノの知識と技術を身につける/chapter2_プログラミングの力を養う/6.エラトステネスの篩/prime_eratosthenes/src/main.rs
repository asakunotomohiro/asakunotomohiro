fn prime_eratosthenes() {
	let mut count = 10;
	for ii in 0..100 {
		print!("{0:>3}", ii);
		count -= 1;
		if count == 0 {
			println!("");
			count = 10;
		}
	}
}

fn main() {
	println!("Hello, world!");
	prime_eratosthenes();
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
