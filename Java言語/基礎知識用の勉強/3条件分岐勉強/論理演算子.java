import java.util.Arrays;

class 論理演算子 {
	public static void main(String[] args){
		String asakunotomohiro = new String("朝来野智博");
		System.out.print("hello World.\n");

		int asakuno = 20210919;
		int tomohiro = 20210920;

		System.out.print( "20210919 == 20210920：" );
		System.out.println( asakuno == tomohiro );	// 20210919 == 20210920：false

		System.out.print( "20210919 != 20210920：" );
		System.out.println( asakuno != tomohiro );	// 20210919 != 20210920：true

		System.out.print( "20210919 > 20210920：" );
		System.out.println( asakuno > tomohiro );	// 20210919 > 20210920：false

		System.out.print( "20210919 < 20210920：" );
		System.out.println( asakuno < tomohiro );	// 20210919 < 20210920：true

		System.out.print( "20210919 >= 20210920：" );
		System.out.println( asakuno >= tomohiro );	// 20210919 >= 20210920：false

		System.out.print( "20210919 <= 20210920：" );
		System.out.println( asakuno <= tomohiro );	// 20210919 <= 20210920：true

		// 以下、文字同士の比較。
		System.out.print( "朝来野智博 == 朝来野智博：" );
		System.out.println( asakunotomohiro.equals("朝来野智博") );	// 朝来野智博 == 朝来野智博：true

		// 以下、その否定
		System.out.print( "朝来野智博 != asakunotomohiro：" );
		System.out.println( !asakunotomohiro.equals("asakunotomohiro") );	// 朝来野智博 != asakunotomohiro：true

		// 浮動小数点数
		System.out.print( "2021.0919 == 2021+0.0919：" );
		System.out.println( 2021.0919 == 2021+0.0919 );	// 2021.0919 == 2021+0.0919true

		System.out.print( "0.2*3 == 0.6：" );
		System.out.println( 0.2*3 == 0.6 );	// 0.2*3 == 0.6：false

		// 配列比較
		int[] asaarray = new int[]{ 20210919, 20210920, };
		int[] tomoarray = new int[]{ 20210919, 20210920, };
		System.out.print( "配列比較" );
		System.out.println( Arrays.compare( asaarray, tomoarray) );	// 配列比較0
							// 多次元配列の場合は"Arrays.deepEquals()"

	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
