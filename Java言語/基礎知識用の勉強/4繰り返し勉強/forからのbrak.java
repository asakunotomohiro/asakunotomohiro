class forからのbrak {
	public static void main(String[] args){
		String[] asakunotomohiro = new String[]{"朝", "来", "野", "智", "博"};
		System.out.print("hello World.\n");

		int asakuno = 20210919;
		int tomohiro = 20210920;

		int kk = 0;
		for ( String ii:asakunotomohiro ) {
			for ( String jj:asakunotomohiro ) {
					System.out.println( kk + ": ii==" + ii + ": jj==" + jj );
					kk++;
			}
			kk = 0;
			if ( ii.equals("野") ) {
				break;
			}
		}
		// 出力結果：
//					0: ii==朝: jj==朝
//					1: ii==朝: jj==来
//					2: ii==朝: jj==野
//					3: ii==朝: jj==智
//					4: ii==朝: jj==博
//					0: ii==来: jj==朝
//					1: ii==来: jj==来
//					2: ii==来: jj==野
//					3: ii==来: jj==智
//					4: ii==来: jj==博
//					0: ii==野: jj==朝
//					1: ii==野: jj==来
//					2: ii==野: jj==野
//					3: ii==野: jj==智
//					4: ii==野: jj==博

		System.out.println( "--------------------------------" );

		// 以下、break文がない場合の出力結果。
		kk = 0;
		for ( String ii:asakunotomohiro ) {
			for ( String jj:asakunotomohiro ) {
					System.out.println( kk + ": ii==" + ii + ": jj==" + jj );
					kk++;
			}
			kk = 0;
//			if ( ii.equals("野") ) {
//				break;
//			}
		}
		// 出力結果：
//					0: ii==朝: jj==朝
//					1: ii==朝: jj==来
//					2: ii==朝: jj==野
//					3: ii==朝: jj==智
//					4: ii==朝: jj==博
//					0: ii==来: jj==朝
//					1: ii==来: jj==来
//					2: ii==来: jj==野
//					3: ii==来: jj==智
//					4: ii==来: jj==博
//					0: ii==野: jj==朝
//					1: ii==野: jj==来
//					2: ii==野: jj==野
//					3: ii==野: jj==智
//					4: ii==野: jj==博
//					0: ii==智: jj==朝
//					1: ii==智: jj==来
//					2: ii==智: jj==野
//					3: ii==智: jj==智
//					4: ii==智: jj==博
//					0: ii==博: jj==朝
//					1: ii==博: jj==来
//					2: ii==博: jj==野
//					3: ii==博: jj==智
//					4: ii==博: jj==博
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
