class factorial {
	static void recursionsample(){
		// 10の階乗を求める。
		int total = 10;
		for( int ii = 9; 0 < ii; ii-- ) {
			total *= ii;
		}
		System.out.printf("10!：%d\n", total);
	}

	static int factorialsample(int count){
		if( count > 0 ) {
			System.out.printf("再帰関数%2d回目の実行\n", count);
			factorialsample( count - 1 );
		}

		return count;
	}

	static int factorial1(final int MAX){
		// 階乗を求める関数。
		//	この関数は、サンプル関数に引数を受け取る形にしただけのもの。
		int count = 1;
		for( int ii = MAX; 0 < ii; ii-- ) {
			count *= ii;
		}

		return count;
	}

	public static void main(String[] args){
		int factorial = factorial1(10);
		System.out.printf("10!：%d\n", factorial);	// 10!：3628800

		recursionsample();	// 10!：3628800
		factorialsample(10);	// 再帰
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
