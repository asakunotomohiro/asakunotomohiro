use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

sub asakunoSwitch {
	my $val = shift;
	my @array = ('asakuno', 42, 20211220, );
	my %hash  = (20211220=>'asakuno', tomohiro=>20211221, );
	if(    $val ~~ 1          ){ say "number 1" }
	elsif( $val ~~ "a"        ){ say "string a" }
	elsif( $val ~~ [1..10,42] ){ say "number in list v1" }
	elsif( $val ~~ @array     ){ say "number in list v2" }
	elsif( $val ~~ /\w+/      ){ say "pattern v1" }
	elsif( $val ~~ qr/\w+/    ){ say "pattern v2" }
	elsif( $val ~~ %hash      ){ say "entry in hash v1" }
	elsif( $val ~~ \%hash     ){ say "entry in hash v2" }
	elsif( $val ~~ \&sub      ){ say "arg to subroutine" }
	else { say "previous case not true" }
}
&asakunoSwitch(1);
#	出力結果：number 1

&asakunoSwitch('a');
#	出力結果：string a

&asakunoSwitch(42);
#	出力結果：number in list v1

&asakunoSwitch(20211220);
#	出力結果：number in list v2


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
