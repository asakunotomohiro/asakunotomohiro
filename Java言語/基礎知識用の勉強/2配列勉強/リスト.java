import java.util.ArrayList;
import java.util.Arrays;

// 便利だろうが、今回のアルゴリズムの勉強では使わない。

class リスト {
	public static void main(String[] args){
		// 以下、2次元配列。
		int[][] asakuno = new int[1][1];

		// ArrayList tomohiro = new ArrayList<int>(10);	// シンボルを見つけられません
														// 予期しない型
		// int tomohiro = new ArrayList<int>(10);	// シンボルを見つけられません
													// 予期しない型
		// ArrayList tomohiro = new ArrayList<Integer>(10);	// error| 警告:[rawtypes] raw型が見つかりました: ArrayList
		// List<Integer> tomohiro = new ArrayList<Integer>(10);	// error| エラー: シンボルを見つけられません
		ArrayList<?> tomohiro = new ArrayList<Integer>(10);				// 問題なく宣言できる。
		ArrayList<Integer> tomohiroInt = new ArrayList<Integer>(10);	// 問題なく宣言できる。
		// var tomohiroArray = new ArrayList<Integer>(Arrays.asList(20210918, 20210919, 20210920, ));	// error| エラー: 式の開始が不正です
		var tomohiroArray = new ArrayList<Integer>(Arrays.asList(20210918, 20210919, 20210920));
		System.out.println( tomohiroArray.get(0) );		// 20210918
		System.out.println( tomohiroArray.size() );		// 3

	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
