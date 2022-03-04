class factorial {
	static void recursionsample(){
		// 10の階乗を求める。
		int total = 10;
		for( int ii = 9; 0 < ii; ii-- ) {
			total *= ii;
		}
		System.out.printf("10!：%d", total);
	}

	public static void main(String[] args){
		recursionsample();	// 10!：3628800
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
