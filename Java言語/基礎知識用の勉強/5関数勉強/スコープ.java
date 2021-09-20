class スコープ {
//	int tomohiroasakuno = 20210920;
//	エラー: staticでない変数 tomohiroasakunoをstaticコンテキストから参照することはできません
	static int tomohiroasakuno = 20210920;

	public static void tomohiro() {
		int tomohiro = 0;
		System.out.printf("引数無し-戻り値無し関数内の変数：%d\n", tomohiro);
	}

	public static void main(String[] args){
		String[] asakunotomohiro = new String[]{"朝来野智博", };
		System.out.print("hello World.\n");

		// 以下、関数呼び出し。
		tomohiro();	// 引数無し-戻り値無し関数内の変数：0
//		System.out.printf("引数無し-戻り値無し関数内の変数(%d)をmein関数から呼び出し。\n", tomohiro);
//		エラーになった。
//				エラー: シンボルを見つけられません
//						System.out.printf("引数無し-戻り値無し関数内の変数(%d)をmein関数から呼び出し。\n", tomohiro);
//						                                                          ^
//				  シンボル:   変数 tomohiro
//				  場所: クラス メソッド
//				エラー1個

		{
			int asakuno = 20210920;
			System.out.printf("ブロック内の変数：%d\n", asakuno);	// ブロック内の変数：20210920
		}
		// System.out.printf("ブロック内の変数をブロック外から取得：%d\n", asakuno);	// エラー
		//	エラー: シンボルを見つけられません

		System.out.printf("フィールドスコープ：%d\n", tomohiroasakuno);	// フィールドスコープ：20210920
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
