use v5.24;
use Switch 'Perl6';
# Can't locate Switch.pm in @INC (you may need to install the Switch module) (@INC contains: 〜 ) at givenWhen.pl line 2.
# BEGIN failed--compilation aborted at givenWhen_v5.24失敗.pl line 2.

sub asakunoSwitch {
	my $val = shift;
	given ($val) {
			when (1)        { print "number 1" }
			when ("a")      { print "string a" }
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

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
