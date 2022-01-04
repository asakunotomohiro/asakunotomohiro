package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル書き込み。";

sub asakunoInputOutput() {
	open my $file_fh, '>>', $_[0]
		or die "$_[0]のファイルオープン失敗($!)";
	foreach( @asakuno ) {
		say $file_fh $_;	# `say STDOUT;`ならば利用可能。
		# say $file_fh;#	←☆これを用いた場合、以下のGLOBとやらが出力される(ファイル書き込みはしない・標準出力)。
			# GLOB(0x7ff35f001988)
			# GLOB(0x7ff35f001988)
			# GLOB(0x7ff35f001988)
		# say {$file_fh} $_;	←☆これなら問題なくファイル書き込みできる。
		# say {$file_fh};	←☆エラー。
			# syntax error at ファイル書き込み_スカラー変数利用.pl line 20, near "};"
			# Execution of ファイル書き込み_スカラー変数利用.pl aborted due to compilation errors.
	}

	close $file_fh;
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
