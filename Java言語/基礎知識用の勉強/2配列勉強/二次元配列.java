class 二次元配列 {
	public static void main(String[] args){
		System.out.print("hello World.\n");
		int[][] asakuno = new int[2][3];
		int[][] tomohiro = {
			{
				20210918,
				20210919,
			},
			{
				20210920,
				20210921,
			}
			};

		System.out.print(asakuno[0][1] + "\n");	// 0
		System.out.print(tomohiro[0][0] + "\n");	// 20210918
		System.out.print(tomohiro[1][0] + "\n");	// 20210920

	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
