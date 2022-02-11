class kuku2 {
	static void kuku(){
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
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
