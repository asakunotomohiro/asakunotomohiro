class メソッド {
	public static void nofuncno() {
		// static を付けなければ、staticを付けた関数から呼べない。
		System.out.print("引数無し-戻り値無し\n");
	}

	public static void nofuncint( int asakuno ) {
		// static を付けなければ、staticを付けた関数から呼べない。
		System.out.printf("引数あり(%d)-戻り値無し\n", asakuno);
	}

	public static int intfuncno() {
		// static を付けなければ、staticを付けた関数から呼べない。
		System.out.print("引数なし-戻り値あり\n");
		return 20210920;
	}

	public static int intfuncint( int asakuno ) {
		// static を付けなければ、staticを付けた関数から呼べない。
		System.out.printf("引数あり(%d)-戻り値あり\n", asakuno);
		return 20210920;
	}

	public static void main(String[] args){
		String[] asakunotomohiro = new String[]{"朝来野智博", };
		System.out.print("hello World.\n");

		// 以下、引数無しの戻り値なしの関数を呼び出す。
		nofuncno();	// 引数無し-戻り値無し

		// 以下、引数ありの戻り値なしの関数を呼び出す。
		nofuncint( 20210920 );	// 引数あり(20210920)-戻り値無し

		// 以下、引数無しの戻り値ありの関数を呼び出す。
		int retfunc = intfuncno();	// 引数なし-戻り値あり
		System.out.printf("引数無しの戻り値あり(%d)\n", retfunc);	// 引数無しの戻り値あり(20210920)

		// 以下、引数ありの戻り値ありの関数を呼び出す。
		retfunc = intfuncint( 20210921 );	// 引数あり(20210921)-戻り値あり
		System.out.printf("引数ありの戻り値あり(%d)\n", retfunc);	// 引数ありの戻り値あり(20210920)

	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
