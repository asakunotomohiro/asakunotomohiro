class addup3 {
	static int addup3(int number){
		var total = (1 + number) * number / 2;

		return total;
	}
	public static void main(String[] args){
		var total = addup3(10);
		System.out.printf("合計点 %d\n", total);	// 合計点 55
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
