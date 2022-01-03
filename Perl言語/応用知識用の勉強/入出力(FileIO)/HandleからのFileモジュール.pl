package perlStudyInputOutput;
$VERSION = "0.003";
use v5.24;
use IO::File;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル読み込み。";

sub asakunoInputOutput() {
	my $file = IO::File->new( "< $_[0]" )
		or die "ファイルオープン失敗($!)。";
#	my $file = IO::File->new( "$_[0]", 'r' )	←☆どちらでも構わない(こっちでも動く)。
#		or die "ファイルオープン失敗($!)。";
		# 'r'は読み取り。
		# 'w'は書き込み。
		# ANSI Cのfopenのモード文字列とのことで、そしてopen演算子でも使える。
#	my $file = IO::File->new( "$_[0]", O_RDONLY )	←☆どちらでも構わない(こっちでも動く)。
#		or die "ファイルオープン失敗($!)。";

	# 一時ファイルの作成方法は以下になる。
	# my $temp = IO::File->new_tmpfile;

	while( <$file> ) {
		chomp;
		say;
	}

	$file->close;	# 関数終了後に閉じるため、わざわざ処理不要。
	#undef $file;	# 閉じる方法はこっちでも構わない。
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
