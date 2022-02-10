package regularexpressionsStudyPerl;
$VERSION = "0.002";
use v5.24;
#use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
#use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来来来野智来博";
my @asakuno = qw( 朝来野 智博 朝来野智博 date.2022/01/29 DATE.2022/01/29 date:hoge date: asakuno );

say "量指定子(Perl独自とは言いがたく、他の正規表現でも一部有効)。";

sub asakuno() {
	if( $asakuno =~ /来/ ) {
		say "来\t$&";	# 通常利用のマッチ変数は、処理速度の足を大幅に引っ張る。
		# 検索結果：来
	}
	if( $asakuno =~ /来*/p ) {	# こっちのマッチ変数(?)を用いること。
		say "来*\t${^MATCH}";
		# 検索結果：来	←☆何でだよ。
	}
	$asakuno = "asakkkuno";
	if( $asakuno =~ /k/p ) {	# こっちのマッチ変数(?)を用いること。
		say "k\t${^MATCH}";
		# 検索結果：k
	}
	if( $asakuno =~ /k*/p ) {	# こっちのマッチ変数(?)を用いること。
		say "k*\t${^MATCH}";
		# 検索結果：空文字列(undef)	←☆何でだよ(0回以上にマッチするならば、問題なくマッチしそうなのだが？)。
	}
	if( $asakuno =~ /k+/p ) {	# こっちのマッチ変数(?)を用いること。
		say "k+\t${^MATCH}";
		# 検索結果：kkk	←☆一応は納得する結果。
	}
	if( $asakuno =~ /{3}k/p ) {	# こっちのマッチ変数(?)を用いること。
		say "{3}k\t${^MATCH}";
		# 検索結果：そもそもこっちの処理が走らない。
		# 何より、指定方法を間違えていた。
	}
	if( $asakuno =~ /k{3}/p ) {	# こっちのマッチ変数(?)を用いること。
		say "k{3}\t${^MATCH}";
		# 検索結果：kkk
	}
}
&asakuno(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
