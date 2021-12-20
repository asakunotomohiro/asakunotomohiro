use v5.010;

sub asakunoSwitch {
	my $val = shift;
	given ($val) {
		# given is experimental at givenWhen_v5.01失敗.pl line 5.
			when (1)        { print "number 1" }	# when is experimental at givenWhen_v5.01失敗.pl line 7.
			when ("a")      { print "string a" }	# when is experimental at givenWhen_v5.01失敗.pl line 8.
#			when [1..10,42] { print "number in list" }
#			when (@array)   { print "number in list" }
#			when (/\w+/)    { print "pattern" }
#			when (qr/\w+/)  { print "pattern" }
#			when (%hash)    { print "entry in hash" }
#			when (\%hash)   { print "entry in hash" }
#			when (\&sub)    { print "arg to subroutine" }
			default         { print "previous case not true" };
	};
}
&asakunoSwitch(1);
#	出力結果：number 1

say;
say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
