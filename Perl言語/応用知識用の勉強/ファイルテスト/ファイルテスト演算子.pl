package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ローカルタイム関数利用";

sub asakuno() {
	#my $myname = basename($0, '');	# 自身のファイル名取得。
	my $myname = $0;	# 自身のファイル名取得。
	say "'$myname'ファイルが存在する。" if -e $myname;
	#	'ファイルテスト演算子.pl'ファイルが存在する。
	die "'$myname'はディレクトリではない。" unless -d $myname;
	#	'ファイルテスト演算子.pl'はディレクトリではない。 at ファイルテスト演算子.pl line 17.
}
&asakuno(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
