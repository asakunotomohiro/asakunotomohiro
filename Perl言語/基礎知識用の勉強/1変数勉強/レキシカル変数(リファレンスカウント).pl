use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "レキシカル変数";

sub referencefunc()
{
	my @tomohiro = @_;
	push @tomohiro, "asakunotomohiro";
	return \@tomohiro;
}

sub main()
{
	my $test = &referencefunc("asakuno", "tomohiro");

	say $$test[0];	# asakuno
	say $$test[1];	# tomohiro
	say $$test[2];	# asakunotomohiro

#	say @tomohiro;
	# Global symbol "@tomohiro" requires explicit package name (did you forget to declare "my @tomohiro"?) at レキシカル変数(リファレンスカウント).pl line 23.
}

main();
#	出力結果：

#say $$tomohiro[0];
#	Global symbol "$tomohiro" requires explicit package name (did you forget to declare "my $tomohiro"?) at レキシカル変数(リファレンスカウント).pl line 27.

#say $$test[0];
#	Global symbol "$test" requires explicit package name (did you forget to declare "my $test"?) at レキシカル変数(リファレンスカウント).pl line 30.


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
