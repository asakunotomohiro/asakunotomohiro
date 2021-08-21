class データ型 {
	public static void main(String[] args){
		int asakuno = 20210821;
//		float tomohiro = 2021.08;	// error| エラー: 不適合な型: 精度が失われる可能性があるdoubleからfloatへの変換
		float tomohiro = 2021.08f;
		String asakunotomohiro = "朝来野智博";
		boolean asa = false;

		System.out.println(asakuno);	// 20210821
		System.out.println(tomohiro);	// 2021.08
		System.out.println(asakunotomohiro);	// 朝来野智博
		System.out.println(asa);	// false

		// 以下、数値を文字列として結合した。
		System.out.println(asakuno + "" + tomohiro);	// 202108212021.08
	}
}
