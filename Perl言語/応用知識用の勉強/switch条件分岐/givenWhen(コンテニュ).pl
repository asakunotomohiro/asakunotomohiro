use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止。

sub asakunoSwitch {
	my $val = shift;
	my @array = ('asakuno', 42, 20211220, );
	my %hash  = (20211220=>'asakuno', tomohiro=>20211221, );
	given ($val) {
		say "$valをwhen句で比較する。";
		say "以下、1と比較。";
		when (1)          { say "number 1" }
		say "以下、aと比較。";
		when ("a")        { say "string a" }
#		say "以下、リスト(1..10,42)と比較。";
#		when ([1..10,42]) { say "number in list v1" }
#		say "以下、配列(@array)と比較。";
#		when (@array)     { say "number in list v2" }
#		when (/\w+/)      { say "pattern v1" }
#		when (qr/\w+/)    { say "pattern v2" }
#		when (%hash)      { say "entry in hash v1" }
#		when (\%hash)     { say "entry in hash v2" }
#		when (\&sub)      { say "arg to subroutine" }
		say "以下、1文字と比較。";
		when (/s/)        { say "string s"; continue} #	←☆continueがない場合、ここで終わる(次の処理には行かない)。
		when (/k/)        { say "string k"; continue}
		when (/u/)        { say "string u"; continue}
		when (/n/)        { say "string n"; continue}
		when (/o/)        { say "string o"; continue}
		default           { say "previous case not true" };
	};
}
&asakunoSwitch(1);
#			1をwhen句で比較する。
#			以下、1と比較。
#			number 1

&asakunoSwitch("a");
#			aをwhen句で比較する。
#			以下、1と比較。
#			以下、aと比較。
#			string a

&asakunoSwitch("asakuno");
#			asakunoをwhen句で比較する。
#			以下、1と比較。
#			以下、aと比較。
#			以下、1文字と比較。
#			string s
#			string k
#			string u
#			string n
#			string o
#			previous case not true

#&asakunoSwitch("asakuno");
#	以下、continueがない場合の処理結果。
#asakunoをwhen句で比較する。
#以下、1と比較。
#以下、aと比較。
#以下、1文字と比較。
#string s

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
