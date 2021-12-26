use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

sub asakunoSwitch {
	$_ = shift;
	my @array = ('asakuno', 42, 20211220, );
	my %hash  = (20211220=>'asakuno', tomohiro=>20211221, );
	if(    /1/          ){ say "number 1" }
	elsif( /"a"/        ){ say "string a" }
	elsif( /[1..10,42]/ ){ say "number in list v1" }
	elsif( /@array/     ){ say "number in list v2" }
	elsif( /\w+/        ){ say "pattern v1" }
	elsif( qr/\w+/      ){ say "pattern v2" }
	elsif( /%hash/      ){ say "entry in hash v1" }
	elsif( /\%hash/     ){ say "entry in hash v2" }
	elsif( /\&sub/      ){ say "arg to subroutine" }
	else { say "previous case not true" }
}
&asakunoSwitch(1);
#	出力結果：number 1	←☆本来"number 1"なので、あっているようにみえる(しかし、1を渡したわけでは無いため、間違った振る舞いになっている)。

&asakunoSwitch('a');
#	出力結果：pattern v1	←☆本来"string a"なので、間違っている(正規表現ゆえの間違いだろう)。

&asakunoSwitch(42);
#	出力結果：number in list v1	←☆本来"number in list v1"なので、あっているようにみえる。

&asakunoSwitch(20211220);
#	出力結果：number 1	←☆本来"number in list v2"なので、間違っている(正規表現で対応できるとは思えない)。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
