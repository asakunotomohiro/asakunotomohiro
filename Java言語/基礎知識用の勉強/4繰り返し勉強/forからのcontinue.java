class forからのcontinue {
	public static void main(String[] args){
		int asakuno = 20210919;
		String[] asakunotomohiro = new String[]{"朝", "来", "野", "智", "博"};
		System.out.print("hello World.\n");

		for ( String ii:asakunotomohiro ) {
			if ( ii.equals("野") ) {
				continue;
			}
			System.out.println( "ii==" + ii );
		}
		// 出力結果：
//					ii==朝
//					ii==来
//					ii==智
//					ii==博

		System.out.println( "--------------------------------" );

		// 以下、continue文がない場合の出力結果。
		for ( String ii:asakunotomohiro ) {
//			if ( ii.equals("野") ) {
//				continue;
//			}
			System.out.println( "ii==" + ii );
		}
		// 出力結果：
//					ii==朝
//					ii==来
//					ii==野
//					ii==智
//					ii==博
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
