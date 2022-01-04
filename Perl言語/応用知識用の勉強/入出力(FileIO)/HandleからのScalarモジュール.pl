package perlStudyInputOutput;
$VERSION = "0.003";
use v5.24;
use IO::Scalar;	# インストールしていないため使えない。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "HandleからのScalarモジュール";

sub asakunoInputOutput() {
	my $scalar_fh = IO::Scalar->new( \$asakuno );

	print $scalar_fh "スカラー変数への出力テスト。";

	$scalar_fh->close;
}
&asakunoInputOutput(@ARGV);
#	Can't locate IO/Scalar.pm in @INC (you may need to install the IO::Scalar module) (@INC contains: . ) at HandleからのScalarモジュール.pl line 4.
#	BEGIN failed--compilation aborted at HandleからのScalarモジュール.pl line 4.

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
