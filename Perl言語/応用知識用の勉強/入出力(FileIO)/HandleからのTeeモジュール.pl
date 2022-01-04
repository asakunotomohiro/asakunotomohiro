package perlStudyInputOutput;
$VERSION = "0.003";
use v5.24;
#use IO::Tee;	←☆これもインストールが必要なようだ。
#	Can't locate IO/Tee.pm in @INC (you may need to install the IO::Tee module) (@INC contains: . ) at HandleからのTeeモジュール.pl line 4.
#	BEGIN failed--compilation aborted at HandleからのTeeモジュール.pl line 4.

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "HandleからのTeeモジュール";

sub asakuno() {
	# ここの関数は、通常利用(モジュールを使わない)。
	open my $test_fh, '>>', 'test.log'
		or die "ファイルオープン失敗($!)。";
	open my $scalar_fh, '>>', \$asakuno;

	print $test_fh		"テスト出力。";
	print $scalar_fh	"テスト出力。"; #	←☆これの出力はどこにいった？

	$test_fh->close;
	$scalar_fh->close;
}
&asakuno(@ARGV);

sub reasakuno() {
	# ここの関数は、上記の通常利用の改良版。
	open my $test_fh, '>>', 'test.log'
		or die "ファイルオープン失敗($!)。";
	open my $scalar_fh, '>>', \$asakuno;

	foreach my $fh ( $test_fh, $scalar_fh ) {
		print $fh		"テスト出力。";
	}

	$test_fh->close;
	$scalar_fh->close;
}
&reasakuno(@ARGV);

sub asakunoInputOutput() {
	open my $test_fh, '>>', 'test.log'
		or die "ファイルオープン失敗($!)。";
	open my $scalar_fh, '>>', \$asakuno;

	$tee_fh = IO::Tee->new( $test_fh, $scalar_fh );
	print $tee_fh "テスト出力。";
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
