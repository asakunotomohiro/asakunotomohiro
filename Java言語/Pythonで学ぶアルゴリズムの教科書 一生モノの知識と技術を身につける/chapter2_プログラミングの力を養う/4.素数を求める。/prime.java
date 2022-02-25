class prime {
	static void prime(){
		for( int ii = 2; 101 > ii; ii++ ){
			var half = ii / 2;	// 商を求める。
			var flag = true;
			for( int jj = 2; 101 > jj; jj++ ){
				if(( ii % jj ) == 0 ){
					// 剰余算にて、割り切れるならば、出力対象外にする。
					flag = false;
					break;
				}
			}
			if( flag == true ) {
				System.out.printf("%d", ii);
			}
		}
	}

	public static void main(String[] args){
		prime();
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
