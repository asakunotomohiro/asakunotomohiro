class kuku {
	static void kuku(){
		// 学生時代から見慣れた九九表作成。
		for( int ii = 1; 10 > ii; ii++ ) {
			for( int jj = 1; 10 > jj; jj++ ) {
				// System.out.printf("%2d x%2d=%2d\n", ii, jj, ii*jj);
				// System.out.printf(" %dx%d=%2d", jj, ii, ii*jj);
				System.out.printf("%3d", ii*jj);
			}
			System.out.println("");
		}
	}

	static void kuku1(){
		// 縦に並ぶプログラム追記。
		for( int ii = 1; 10 > ii; ii++ ) {
			for( int jj = 1; 10 > jj; jj++ ) {
				System.out.printf("%2d x%2d=%2d\n", ii, jj, ii*jj);
			}
		}
	}

	static void kuku2(){
		// 四角形っぽい表示に置き換えたプログラム追記。
		for( int ii = 1; 10 > ii; ii++ ) {
			for( int jj = 1; 10 > jj; jj++ ) {
				// System.out.printf("%2d x%2d=%2d\n", ii, jj, ii*jj);
				System.out.printf(" %dx%d=%2d", jj, ii, ii*jj);
			}
			System.out.println("");
		}
	}

	public static void main(String[] args){
		kuku();
		kuku1();
		kuku2();
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
