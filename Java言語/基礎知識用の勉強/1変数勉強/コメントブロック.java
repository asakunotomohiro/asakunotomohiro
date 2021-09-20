/* openJDKの最新版(ver16？)を用いてコンパイルをしたところ成功した。
$ javac コメントブロック.java
$ java コメントブロック
20210918。
朝来野智博
Javaの勉強。
$
 */

/* 私の使っているJavaバージョンが古かった(java 13)。
$ javac --enable-preview --release 14 -Xlint:preview コメントブロック.java
エラー: リリース・バージョン14はサポートされていません
使用方法: javac <options> <source files>
使用可能なオプションのリストについては、--helpを使用します
$ javac --verstion
エラー: --verstionは無効なフラグです
使用方法: javac <options> <source files>
使用可能なオプションのリストについては、--helpを使用します
$ javac verstion
エラー: クラス名'verstion'が受け入れられるのは、注釈処理が明示的にリクエストされた場合のみです
エラー1個
$ javac -verstion
エラー: -verstionは無効なフラグです
使用方法: javac <options> <source files>
使用可能なオプションのリストについては、--helpを使用します
$ javac -V
エラー: -Vは無効なフラグです
使用方法: javac <options> <source files>
使用可能なオプションのリストについては、--helpを使用します
$ javac --version
javac 13
$
*/

class コメントブロック {
	public static void main(String[] args){
		int asakuno = 20210821;
		float tomohiro = 2021.08f;

		System.out.println( """
			20210918。
			朝来野智博
			Javaの勉強。""" );
	}
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=java noexpandtab:
