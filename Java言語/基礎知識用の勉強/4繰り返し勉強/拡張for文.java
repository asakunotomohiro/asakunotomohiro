class 拡張for文 {
	public static void main(String[] args){
		String[] asakunotomohiro = new String[]{"朝", "来", "野", "智", "博"};
		System.out.print("hello World.\n");

		int asakuno = 20210919;
		int tomohiro = 20210920;

		// 以下、拡張for文
		for ( String ii:asakunotomohiro ) {
			System.out.println( ii );	//
		}
		// 出力結果：
//					朝
//					来
//					野
//					智
//					博

		System.out.println( "--------------------------------" );

		// 以下、通常のfor文
		for ( int ii = 0; ii < asakunotomohiro.length; ii++ ) {
			System.out.println( ii + ":" + asakunotomohiro[ii] );
		}
		// 出力結果：
//					0:朝
//					1:来
//					2:野
//					3:智
//					4:博
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
