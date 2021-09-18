class 配列 {
	public static void main(String[] args){
		System.out.print("hello World.\n");
		int asakuno = 20210918;

		int[] tomohiro = {
					20210918,
					20210919,
					20210920,
					};
		int[] hoge;	// 宣言と代入を別にできるが、別にする理由はあるのか？
		hoge = new int[]{
					13310679,
					54755031,
					64546000,
					24330270,
					tomohiro[1]
					};
		var asakunoarray = new int[] {
					54755032,
					64546030,
					24330271,
					};	// 配列の場合、型推論型を使う利点は潰されているな。

		System.out.println( tomohiro[0] );	// 20210918
		System.out.println( hoge[3] );		// 24330270
		// System.out.println( hoge[5] );	// エラー		要素外への干渉は不可。
					// Exception in thread "main" java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
					// 	at 配列.main(配列.java:22)
		System.out.println( hoge[4] );		// 20210919
		System.out.println( asakunoarray[1] );	// 64546030
		System.out.println( asakunoarray.length );	// 3	←☆またもや,ややこしい(当たり前の結果だが)。
		//asakunoarray[3] = 20210918;	// エラー		配列を拡張することは出来ない。
					// Exception in thread "main" java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
					// 	at 配列.main(配列.java:33)

	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
