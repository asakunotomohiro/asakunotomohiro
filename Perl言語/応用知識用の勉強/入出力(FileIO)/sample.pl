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
#	while( <STDIN> ) { #	←☆Perlerならばこれを使うそうだ。
#		chomp($_);
#		say "入力行値：$_";
#	}
#	while( <> ) { #	←☆ダイヤモンド演算子とのこと。
#		chomp;
#		say "入力行値：$_";
#	}
	while( <<>> ) { #	←☆ダブルダイヤモンド演算子とのこと。
		chomp;
		say "入力行値：$_";
	}
#	foreach( <STDIN> ) {	←☆メモリ使用量が多い。
#		say "入力行値：$_";
#	}

	say "以下、標準出力例。";
	my @asakuno = ("朝来野\n", "智博\n", "asakuno\ntomohiro\n", );
	say "以下、クォートなし。";
	print @asakuno;
#			朝来野
#			智博
#			asakuno
#			tomohiro
	say "以下、クォートあり。";
	print "@asakuno";
#			朝来野
#			 智博
#			 asakuno
#			tomohiro

	say "以下、計算。";
	say '(2+3) ==' . (2+3);		# (2+3) ==5
	say '(2+3)*4 ==' . (2+3)*4;	# (2+3)*4 ==20
	say (2+3)*4;				# 5	←☆意図していない答え。

	say "以下、ダイヤモンド演算子";
	say <>;	# /bin/catの実装に当たるそうだ。
	#	ダイヤモンド演算子は、入力を読み込むためのものであり、出力用ではない。
}
&asakunoInputOutput();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
