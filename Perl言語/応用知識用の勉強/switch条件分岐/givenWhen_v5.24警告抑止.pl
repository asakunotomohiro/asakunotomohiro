use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止。

sub asakunoSwitch {
	my $val = shift;
	my @array = ('asakuno', 42, 20211220, );
	my %hash  = (20211220=>'asakuno', tomohiro=>20211221, );
	given ($val) {
		# given is experimental at givenWhen_v5.24失敗v2.pl line 5.	←☆でなくなった。
		when (1)          { say "number 1" }	# when is experimental at givenWhen_v5.24失敗v2.pl line 7.	←☆でなくなった。
		when ("a")        { say "string a" }	# when is experimental at givenWhen_v5.24失敗v2.pl line 8.	←☆でなくなった。
		when ([1..10,42]) { say "number in list v1" }
		when (@array)     { say "number in list v2" }
		when (/\w+/)      { say "pattern v1" }
		when (qr/\w+/)    { say "pattern v2" }
		when (%hash)      { say "entry in hash v1" }
		when (\%hash)     { say "entry in hash v2" }
		when (\&sub)      { say "arg to subroutine" }
		default           { say "previous case not true" };
	};
}
&asakunoSwitch(1);
#	出力結果：number 1

&asakunoSwitch('a');
#	出力結果：string a

&asakunoSwitch(20211220);
#	出力結果：number in list v2

&asakunoSwitch(42);
#	出力結果：number in list v1

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
