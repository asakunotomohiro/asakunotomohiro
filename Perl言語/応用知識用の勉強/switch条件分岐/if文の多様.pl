use v5.24;

sub asakunoSwitch {
	my $val = shift;
	if(    $val == 1          ){ say "number 1" }
	elsif( $val eq "a"        ){ say "string a" }
	elsif(         [1..10,42] ){ say "number in list" }
#	elsif( $val == (@array)   ){ say "number in list" }
#	elsif( /\w+/      ){ say "pattern" }
#	elsif( qr/\w+/    ){ say "pattern" }
#	elsif( (%hash)    ){ say "entry in hash" }
#	elsif( (\%hash)   ){ say "entry in hash" }
#	elsif( (\&sub)    ){ say "arg to subroutine" }
	else { say "previous case not true" }
}
&asakunoSwitch(1);
&asakunoSwitch('a');
&asakunoSwitch(42);
&asakunoSwitch(20211220);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
