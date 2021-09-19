class 条件分岐 {
	public static void main(String[] args){
		System.out.print("hello World.\n");

		int asakuno = 20210919;
		int tomohiro = 20210920;

		if ( asakuno+1 == tomohiro ) {
			System.out.print( "20210920 == 20210920：" );
			System.out.println( asakuno+1 == tomohiro );	// 20210920 == 20210920：true
		}

		if ( asakuno == tomohiro ) {
			System.out.print( "20210919 == 20210920：" );
			System.out.println( asakuno == tomohiro );	// 
		}
		else {
			System.out.print( "20210919 != 20210920：" );
			System.out.println( asakuno != tomohiro );	// 20210919 != 20210920：true
		}

		if ( asakuno == tomohiro ) {
			System.out.print( "20210919 == 20210920：" );
			System.out.println( asakuno == tomohiro );	//
		}
		else if ( asakuno+1 != tomohiro ) {
			System.out.print( "20210920 != 20210920：" );
			System.out.println( asakuno+1 != tomohiro );	//
		}
		else {
			System.out.print( "20210919 < 20210920：" );
			System.out.println( asakuno < tomohiro );	// 20210919 < 20210920：true
		}

	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
