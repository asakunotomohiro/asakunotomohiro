class average {
	public static void main(String[] args){
		int[] score = {
						70,
						98,
						92,
						88,
						64,
					};
		var total = 0;
		for( int value:score ) {
			total += value;
		}
		var average = (float)total / score.length;
		System.out.printf("合計点 %d\n", total);	// 合計点 412
		System.out.printf("平均点 %f\n", average);	// 平均点 82.400002
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
