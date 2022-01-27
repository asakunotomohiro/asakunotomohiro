package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "配列とprintfの組み合わせ";

sub asakunoInputOutput() {
	my $format = ("%s\n" x @asakuno);
	my $count = @asakuno;
	print $format;
#			%s
#			%s
#			%s
	say $count;	# 3
	printf $format, @asakuno;
#			朝来野
#			智博
#			朝来野智博

	printf ">" . $format . "<", @asakuno;
#			>朝来野
#			智博
#			朝来野智博
#			<
	say;

	my $format = (">%s<\n" x @asakuno);
	printf $format, @asakuno;
#			>朝来野<
#			>智博<
#			>朝来野智博<

	printf ">" . ("%s," x @asakuno) . "<\n", @asakuno;
#			>朝来野,智博,朝来野智博,<

	printf (">%s<\n" x @asakuno), @asakuno;
#			><
#			><
#			><

	printf ">%s<\n" x @asakuno, @asakuno;
#			>朝来野<
#			>智博<
#			>朝来野智博<
}
&asakunoInputOutput();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
