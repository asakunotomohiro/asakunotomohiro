use v5.24;
use Switch;
# Can't locate Switch.pm in @INC (you may need to install the Switch module) (@INC contains: 〜 ) at switch.pl line 2.
# BEGIN failed--compilation aborted at switch失敗.pl line 2.

sub asakunoSwitch {
	my $val = shift;
	switch ($val) {
			case 1          { print "number 1" }
			case "a"        { print "string a" }
			case [1..10,42] { print "number in list" }
			case (@array)   { print "number in list" }
			case /\w+/      { print "pattern" }
			case qr/\w+/    { print "pattern" }
			case (%hash)    { print "entry in hash" }
			case (\%hash)   { print "entry in hash" }
			case (\&sub)    { print "arg to subroutine" }
			else            { print "previous case not true" }
	}
}
&asakunoSwitch(1);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
