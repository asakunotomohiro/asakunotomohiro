class キャスト {
	public static void main(String[] args){
		int asakuno = 128;
		byte tomohiro = 127;

//		tomohiro = asakuno;	// error| エラー: 不適合な型: 精度が失われる可能性があるintからbyteへの変換
		tomohiro = (byte)asakuno;

		System.out.println(tomohiro );	// -128

	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
