use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止。

sub asakunoSwitch {
	my @array = ('asakuno', 42, 20211220, );
	my %hash  = (20211220=>'asakuno', tomohiro=>20211221, );
	# 以下、馬鹿正直にプログラムを書く場合の例）
	my $val = shift;
	given ($val) {
		$_ = $val;	# わざわざデフォルト変数に代入している。
		when ($_ eq 1)          { say "number 1" }			# わざわざデフォルト変数と比較している。
		when ($_ eq "a")        { say "string a" }			# わざわざデフォルト変数と比較している。
		when ($_ eq [1..10,42]) { say "number in list v1" }	# わざわざデフォルト変数と比較している。
		when ($_ eq @array)     { say "number in list v2" }	# わざわざデフォルト変数と比較している。
		when ($_ eq /\w+/)      { say "pattern v1" }		# わざわざデフォルト変数と比較している。
		when ($_ eq qr/\w+/)    { say "pattern v2" }		# わざわざデフォルト変数と比較している。
		when ($_ eq %hash)      { say "entry in hash v1" }	# わざわざデフォルト変数と比較している。
		when ($_ eq \%hash)     { say "entry in hash v2" }	# わざわざデフォルト変数と比較している。
		when ($_ eq \&sub)      { say "arg to subroutine" }	# わざわざデフォルト変数と比較している。
		default           { say "previous case not true" };
	};

	# 以下は、上記と全く同じプログラム。
#	my $val = shift;
#	given ($val) {
#			以下、$_を明記せずに、$_を使って比較していることになる($_への代入も自動的に行われている)。
#		when (1)   { say "number 1" }
#		when ("a") { say "string a" }
#		・
#		・	省略。
#		・
#		また、上記例にて"eq"を用いているのは、省略した場合スマートマッチ演算子(~~)を自動的に使うため、明記する必要がある。
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
