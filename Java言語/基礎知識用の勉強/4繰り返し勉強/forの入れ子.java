class forの入れ子 {
	public static void main(String[] args){
		String asakunotomohiro = new String("朝来野智博");
		System.out.print("hello World.\n");

		int asakuno = 20210919;
		int tomohiro = 20210920;

		for ( int i = 0; 3 > i; i++ ) {
			for ( int j = 0; 3 > j; j++ ) {
				System.out.println( "i == " + i + ", j == " + j );	//
			}
		}
		// 出力結果：
//					i == 0, j == 0
//					i == 0, j == 1
//					i == 0, j == 2
//					i == 1, j == 0
//					i == 1, j == 1
//					i == 1, j == 2
//					i == 2, j == 0
//					i == 2, j == 1
//					i == 2, j == 2

	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
