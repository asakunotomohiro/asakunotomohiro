use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "ハッシュのスライス";

sub associativearray() {
	my %asakuno = (
		asakuno => 20210922,
		tomohiro => 4873118247,
		asakunotomohiro => "朝来野智博",
	);

	# 以下、通常の値出力方法。
	say "$asakuno{asakuno}, $asakuno{tomohiro}";	# 20210922, 4873118247

	# 以下、スライスでの出力方法。
#	say "$asakuno{asakuno, tomohiro}";	Execution of ハッシュのスライス.pl aborted due to compilation errors.
#	say "@asakuno{"asakuno", "tomohiro"}";	Missing right curly or square bracket at ハッシュのスライス.pl line 20, within string
	say @asakuno{"asakuno", "tomohiro"};	# 202109224873118247
	say @asakuno{qw(asakuno tomohiro)};	# 202109224873118247
}
&associativearray();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
