class prime_eratosthenes {
	static int prime_table(){
		// 表の表示。
		for( int ii = 0, count = 10; 100 > ii; ii++ ) {
			System.out.printf("%3d", ii);
			count--;
			if( count == 0 ) {
				System.out.printf("\n");
				count = 10;
			}
		}

		return 0;
	}

	public static void main(String[] args){
		prime_table();
	}

}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
