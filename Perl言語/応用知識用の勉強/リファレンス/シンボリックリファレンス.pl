use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "シンボリックリファレンス";

sub reference() {
	my $name = "foo";
	# $$name = 1;				# $foo変数に1を代入することになる？
		# Can't use string ("foo") as a SCALAR ref while "strict refs" in use at シンボリックリファレンス.pl line 10.

	# ${$name} = 2;			# 同じ意味？
		# Can't use string ("foo") as a SCALAR ref while "strict refs" in use at シンボリックリファレンス.pl line 13.

	# ${$name x 2} = 3;		# $foofoo変数に3を代入することになる？
		# Can't use string ("foofoo") as a SCALAR ref while "strict refs" in use at シンボリックリファレンス.pl line 16.

	# $name->[0] = 4;			# $foo[0]に4を代入することになる？
		# Can't use string ("foo") as an ARRAY ref while "strict refs" in use at シンボリックリファレンス.pl line 19.

	# @$name = ();			# @fooを空リストで代入する？
		# Can't use string ("foo") as an ARRAY ref while "strict refs" in use at シンボリックリファレンス.pl line 22.

	# &$name();				# Calls &foo() (as in Perl 4)
		# Can't use string ("foo") as a subroutine ref while "strict refs" in use at シンボリックリファレンス.pl line 25.

	# my $pack = "THAT";
	# ${"${pack}::$name"} = 5;	# Sets $THAT::foo without eval
		# Can't use string ("THAT::foo") as a SCALAR ref while "strict refs" in use at シンボリックリファレンス.pl line 29.


	# local $value = 10;
		# Global symbol "$value" requires explicit package name (did you forget to declare "my $value"?) at シンボリックリファレンス.pl line 33.
	# $ref = "value";
	{
		my $value = 20;
	#	print $$ref;
	}
}
&reference("asakuno");

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
