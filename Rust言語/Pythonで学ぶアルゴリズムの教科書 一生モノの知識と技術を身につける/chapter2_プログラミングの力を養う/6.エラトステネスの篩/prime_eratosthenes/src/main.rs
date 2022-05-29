fn prime_out_eratosthenes( table: &mut [i32]) {
	// 表の表示。
	let max_len = table.len();
	let mut count = 10;
	for ii in 0..max_len {
		if table[ii] == 999 {
			print!("  /");
		}
		else{
			print!("{0:>3}", table[ii]);
		}
		count -= 1;	// なんだか負けた気がする処理方法。
		if count == 0 {
			println!("");
			count = 10;
		}
	}
}

//fn prime_eratosthenes( table: &mut [i32]) {
fn tablecreate( table: &mut [i32]) {
	//let max_len = table.len();
	//let mut count = 10;
//	for ii in 0..100 {
//	for ii in 0..count {
	//for ii in 0..max_len {
	//	print!("{0:>3}", table[ii]);
	//	count -= 1;
	//	if count == 0 {
	//		println!("");
	//		count = 10;
	//	}
	//}
	// 篩いテーブル作成。
	//print!("{0}", table.len());
	for ii in 0..table.len() {
		table[ii] = ii as i32;
	}
	table[0] = 999;	// falseのつもり。
	table[1] = 999;	// falseのつもり。
}

fn eratosthenes_sieve_process( table: &mut [i32], start: i32) {
	// エラトステネスの篩を処理する関数
	let max_len = table.len();
	//let for_start = start + start;
	println!("{0}の倍数をふるい落とす。", start);
	//for ii in for_start..max_len {
	//for ii in for_start..100 {
	//for ii in 4..100 {
	//for ii in 0..max_len {
	let mut ii:i32 = start + start;
	while max_len > ii as usize {
	//while max_len as i32 > ii {
	//while max_len > ii as i32 {
	//while max_len > ii {
		//table[ii] = 999 as i32;
		//table[ii as i32] = 999;
		//table[ii] as i32 = 999;
		//table[ii as i32] = 999;
		table[ii as usize] = 999;
		ii += start;
	}
}

fn main() {
	//let mut table: [i32; 10*10];
	//let table: [i32; 10*10];
	//let table: [i32; 10*10] = [0; 10*10];
	let mut table: [i32; 10*10] = [0; 10*10];
	//let mut table: [i32; 10*10] = 0;
	// let mut table: [i32; 10*10] = [0];
	// 以下、テーブル内容の初期化。
	// for ii = 0; table.len > ii; ii += 1 {
	//for ii in 0..table.len() {
	////for ii in 0..100 {
	//	table[ii] = ii as i32;
	//}
	tablecreate(&mut table);	// テーブル作成。
	prime_out_eratosthenes(&mut table);	// テーブル表示。
	//eratosthenes_sieve_process(&mut table, 2);	// ふるいに落とす。
	//prime_out_eratosthenes(&mut table);	// テーブル表示。
	//for ii in 2..=11 {	// イコール記号を付けることで、右辺値も含む。
	for ii in 2..11 {	// イコール記号を付けることで、右辺値も含む。
		if table[ii as usize] == 999 {
			continue;
		}
		println!("------------------------------");
		eratosthenes_sieve_process(&mut table, ii);	// ふるいに落とす。
		prime_out_eratosthenes(&mut table);	// テーブル表示。
	}

	println!("以上。");
}

/*	vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab: */
