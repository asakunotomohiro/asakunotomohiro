class prime {
	static void prime(){
		for( int ii = 2; 101 > ii; ii++ ){
			int half = ii / 2;	// 商を求める。
			boolean flag = true;
			for( int jj = 2; half >= jj; jj++ ){
				if(( ii % jj ) == 0 ){
					// 剰余算にて、割り切れるならば、出力対象外にする。
					flag = false;
					break;
				}
//System.out.printf("%d %% %d = %d\n", ii, jj, ii%jj);	// 0の余り以外がここで表示される(意味の無い確認)。
//				if( ii == jj ) {
//					System.out.printf("%d", ii);
//				}
			}
//System.out.printf("%s\n", flag);
			//if( flag == true ) {	←☆Bool型故に、単発存在だけで比較が行われる(正確には比較と言わないだろうが)。
			if( flag ) {
				System.out.printf("%d,", ii);
			}
		}
	}

	public static void main(String[] args){
		prime();
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
