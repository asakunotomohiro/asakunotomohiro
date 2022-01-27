use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "スタック";

sub push() {
	my ( $ii, $stack) = @_;

	push @$stack, $ii;
}

sub pop() {
	my ( $stack) = @_;

	if (@$stack <= 0) {
		return "取り出すデータが存在しません。";
	}
	else {
		return pop @$stack;
	}
}

sub main() {
	# my $MAX = 5;
	# my @stack = (0) x $MAX;
	# say "@stack";	# 0 0 0 0 0
	# my $sp = 0;		# スタックポインタ
	my @stack;

	for my $ii ( 0..3 ) {
		&push($ii, \@stack);
	}
	&push("asakuno", \@stack);
	for my $ii ( 4..5 ) {
		&push($ii, \@stack);
	}
	&push("tomohiro", \@stack);
#	for my $ii ( 0..8 ) {
#		my $data = &pop(\@stack);
#		say "取り出したデータ：", $data;
#	}
	say &pop(\@stack);	# tomohiro
	say &pop(\@stack);	# 5
}
&main("asakuno");
# 出力結果：
#			取り出したデータ：5
#			取り出したデータ：4
#			取り出したデータ：3
#			取り出したデータ：2
#			取り出したデータ：1
#			取り出したデータ：0
#			取り出したデータ：取り出すデータが存在しません。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
