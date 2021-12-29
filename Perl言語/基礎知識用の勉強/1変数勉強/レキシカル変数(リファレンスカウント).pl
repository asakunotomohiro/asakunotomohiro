use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");
our $tomohiro = "tomohiro";

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

package SubStaticScope;

say "以下、main側で宣言した変数を呼び出す。";
say $main::asakuno;		# 空文字列(undef)
say $main::tomohiro;	# tomohiro

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
