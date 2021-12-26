use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "スマートマッチ演算子の配列編";
my @matchChar = ("朝来野智博", "朝来野", "智博", "asakuno", );

package mainSmartMatch::main;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

	# 左の値が右に含まれているかを調べるのだろう。
	if( $val ~~ @matchChar ) {
#	if( @matchChar ~~ $val ) {	←☆これでは何も検索に掛からなかったのに・・・上のはかかる(なぜ？)。
		say "\"@matchChar\"に\"$val\"が含まれている。";
	}
}
say "以下、実行。";
&asakunoSmart(1);
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('朝');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('朝来野智博');
#	出力結果："朝来野智博 朝来野 智博 asakuno"に"朝来野智博"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。


package mainSmartMatch::regex;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

	# 左の値が右に含まれているかを調べるのだろう。
#	if( /$val/ ~~ @matchChar ) {
	# 正規表現検索の場合は、上の処理と順番関係なく動くようだ(なぜ？)。
	if( @matchChar ~~ /$val/ ) {
		say "\"@matchChar\"に\"$val\"が含まれている。";
	}
}
say "以下、実行。";
&asakunoSmart(1);
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('朝');
#	出力結果："朝来野智博 朝来野 智博 asakuno"に"朝"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野智博');
#	出力結果："朝来野智博 朝来野 智博 asakuno"に"朝来野智博"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。


package subPackage::Function::regex;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

	# 以下、2種類だけでは検索を掛けてくれない(配列なのだから当たり前だが・・・)。
#	if( /$val/ =~ @matchChar ) {
##	if( @matchChar =~ /$val/ ) {
#		say "\"@matchChar\"に\"$val\"が含まれている。";
#	}

	foreach my $asakuno (@matchChar) {
#		if( /$val/ =~ $asakuno ) {	←☆全く検索に掛からず。
		# 今回の場合は、右のパターンに一致するかどうかを見ている(本来の挙動通り)。
		if( $asakuno =~ /$val/ ) {
			say "\"@matchChar\"に\"$val\"が含まれている。";
		}
	}
}
say "以下、実行。";
&asakunoSmart(1);
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('朝');
#	出力結果："朝来野智博 朝来野 智博 asakuno"に"朝"が含まれている。
#	出力結果："朝来野智博 朝来野 智博 asakuno"に"朝"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野智博');
#	出力結果："朝来野智博 朝来野 智博 asakuno"に"朝来野智博"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。


package subPackage::Function::normal;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

	foreach my $asakuno (@matchChar) {
		# 今回の場合は、右のパターンに一致するかどうかを見ている(本来の挙動通り)。
		if( "$asakuno" eq "$val" ) {
			say "\"@matchChar\"に\"$val\"が含まれている。";
		}
	}
}
say "以下、実行。";
&asakunoSmart(1);
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('朝');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('朝来野智博');
#	出力結果："朝来野智博 朝来野 智博 asakuno"に"朝来野智博"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。



say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
