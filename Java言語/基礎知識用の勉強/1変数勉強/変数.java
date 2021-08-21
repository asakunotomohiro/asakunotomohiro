class /* クラス名が日本語 */ 変数 {
	public static void main(String[] args){
		System.out.print("hello World.\n");
//		int asakuno;	// error| エラー: 変数asakunoは初期化されていない可能性があります
		int asakuno = 1234;
		int tomohiro = 20210821;

		System.out.println(asakuno + tomohiro );	// 20212055
				// 文字列としてつなぎたかったのだが、無理なのか(加算された)。

	}
}
