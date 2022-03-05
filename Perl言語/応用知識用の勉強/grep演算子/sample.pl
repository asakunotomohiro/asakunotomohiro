package perlStudyGrepoperatorProgramming;
$VERSION = "0.001";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "grep演算子";

sub asakunoGrep() {
	# 以下、リストから"野"を含む文字列を取り出す。
	say "@asakuno";		# 朝来野 智博 朝来野智博
	my @tomohiro = grep { /野/ } @asakuno;
	say "@tomohiro";	# 朝来野 朝来野智博
}
&asakunoGrep();

say '-' x 30;

sub asakunoNotGrep() {
	my @tomohiro;
	# 以下、リストから"野"を含む文字列を取り出す。
	say "@asakuno";	# 朝来野 智博 朝来野智博
	foreach my $value (@asakuno) {
		if( $value =~ /野/ ) {
			push @tomohiro, $value;
		}
	}
	say "@tomohiro";	# 朝来野 朝来野智博
}
&asakunoNotGrep();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
