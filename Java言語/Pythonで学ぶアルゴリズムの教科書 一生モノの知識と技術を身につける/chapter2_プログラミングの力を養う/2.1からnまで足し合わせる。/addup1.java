class addup1 {
	static void addup1(){
		var total = 0;
		for( int ii = 0; 10 >= ii; ii++ ) {
			total += ii;
		}
		System.out.printf("合計点 %d\n", total);	// 合計点 55
	}
	public static void main(String[] args){
		addup1();
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
