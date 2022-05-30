class addup {
	static void addup1(){
		var total = 0;
		for( int ii = 0; 10 >= ii; ii++ ) {
			total += ii;
		}
		System.out.printf("合計点 %d\n", total);	// 合計点 55
	}

	static void addup2(int number){
		var total = 0;
		for( int ii = 0; number >= ii; ii++ ) {
			total += ii;
		}
		System.out.printf("合計点 %d\n", total);	// 合計点 55
	}

	static int addup3(int number){
		var total = (1 + number) * number / 2;

		return total;
	}

	public static void main(String[] args){
		addup1();

		addup2(10);

		var total = addup3(10);
		System.out.printf("合計点 %d\n", total);	// 合計点 55
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
