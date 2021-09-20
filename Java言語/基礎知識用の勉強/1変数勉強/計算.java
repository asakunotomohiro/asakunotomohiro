class 計算 {
	public static void main(String[] args){
		int asakuno = 20210821;
		float tomohiro = 2021.08f;

		System.out.println(asakuno + asakuno);	// 40421642
		System.out.println(asakuno - asakuno);	// 0
		System.out.println(asakuno * asakuno);	// 125840665
		System.out.println(asakuno / tomohiro);	// 10000.01
		System.out.println(asakuno % tomohiro);	// 20.439453

//		Integer asakunotomohiro = new Integer( 20210821 );	// error| 警告:[deprecation] IntegerのInteger(int)は推奨されません
		Integer asakunotomohiro = Integer.valueOf( 20210821 );
		Integer asakunoBoxing = 20210821;	// オートボクシング
		Float asakunoF = Float.valueOf( 20.210821f );
		Character asakunoC = Character.valueOf( 'A' );
//		Character asakunoCs = Character.valueOf("朝来野智博");	// error| エラー: 不適合な型: Stringをcharに変換できません:
		Boolean asakunoB = Boolean.valueOf( true );

		System.out.println( asakunotomohiro );	// 20210821
		System.out.println( asakunoF );	// 20.210821
		System.out.println( asakunoC );	// A
		System.out.println( asakunoB );	// true
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
