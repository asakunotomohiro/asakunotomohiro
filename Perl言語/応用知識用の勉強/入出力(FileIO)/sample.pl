package perlStudyInputOutput;
$VERSION = "0.001";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "入出力サンプル";

sub asakunoInputOutput() {
	# 実行後、入力待ち状態になる。
	# そして、文字入力後にEnterキー押下後、入力した文字が出力される。
	# 個人的にはファイルから読み込むと思っていた。
#	while( defined(my $line = <STDIN>)) {
#		say "$line";
#	}
	# 以下、上記のショートカットプログラム。
	while( <STDIN> ) { #	←☆Perlerならばこれを使うそうだ。
		say "入力行値：$_";
	}
#	foreach( <STDIN> ) {	←☆メモリ使用量が多い。
#		say "入力行値：$_";
#	}
}
&asakunoInputOutput();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
