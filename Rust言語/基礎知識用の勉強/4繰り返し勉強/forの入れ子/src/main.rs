fn main() {
	println!("forの入れ子");

	for ii in 0..4 {
		for jj in 0..4 {
			println!("1つ目のfor:{}からの2つ目のfor:{}", ii, jj);
		}
	}
	// 出力結果：
//				1つ目のfor:0からの2つ目のfor:0
//				1つ目のfor:0からの2つ目のfor:1
//				1つ目のfor:0からの2つ目のfor:2
//				1つ目のfor:0からの2つ目のfor:3
//				1つ目のfor:1からの2つ目のfor:0
//				1つ目のfor:1からの2つ目のfor:1
//				1つ目のfor:1からの2つ目のfor:2
//				1つ目のfor:1からの2つ目のfor:3
//				1つ目のfor:2からの2つ目のfor:0
//				1つ目のfor:2からの2つ目のfor:1
//				1つ目のfor:2からの2つ目のfor:2
//				1つ目のfor:2からの2つ目のfor:3
//				1つ目のfor:3からの2つ目のfor:0
//				1つ目のfor:3からの2つ目のfor:1
//				1つ目のfor:3からの2つ目のfor:2
//				1つ目のfor:3からの2つ目のfor:3

	println!("以上。")
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
