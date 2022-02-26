fn sampleforeach() {
	for ii in 1..3 {
		for jj in 1..3 {
			println!("\tii[{0:>2}], jj[{1:<2}]", ii, jj);
		}
	}
}

fn samplewhile() {
	let mut ii = 1;
	while ii < 3 {
		let mut jj = 1;
		while jj < 3 {
			println!("\tii[{0:>02}], jj[{1:^3}]", ii, jj);
			jj += 1;
		}
		ii += 1;
	}
}

fn kuku1() {
	for ii in 1..10 {
		for jj in 1..10 {
			println!("\t{0}x{1}={2:>2}", ii, jj, ii*jj);
		}
	}
}

fn kuku2() {
	for ii in 1..10 {
		for jj in 1..10 {
			print!("\t{0:>2}x{1}={2:>2}", jj, ii, ii*jj);
		}
		println!("");
	}
}

fn kuku3() {
	for ii in 1..10 {
		for jj in 1..10 {
			print!("{0:>3}", ii*jj);
		}
		println!("");
	}
}

fn main() {
	println!("以下、二重ループのforeachサンプルプログラム。");
	sampleforeach();
	println!("以下、二重ループのwhileサンプルプログラム。");
	samplewhile();
	println!("以下、縦に並ぶプログラム。");
	kuku1();
	println!("以下、四角形っぽい表示に置き換えたプログラム。");
	kuku2();
	println!("以下、学生時代から見慣れた九九表。");
	kuku3();
	println!("以上。");
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
