use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "スマートマッチ演算子のハッシュ編";
my @arrayChar = ("朝来野智博", "朝来野", "智博", "asakuno", );
my %matchChar = ("朝来野智博"=>20211221, 4774135046=>"オブジェクト指向", asakuno=>"智博", );

package mainSmartMatch::main;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

#	if( @matchChar ~~ $val ) {#	←☆これでは何も検索に掛からなかったのに・・・上のはかかる(なぜ？)。
	# 左の値が右に含まれているかを調べるのだろう。
	if( $val ~~ %matchChar ) {
		say "\"%matchChar\"に\"$val\"が含まれている。";
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
#	出力結果："%matchChar"に"朝来野智博"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('智博');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart(20211221);
#	出力結果：出力なし。


package mainSmartMatch::regex;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

	# 左の値が右に含まれているかを調べるのだろう。
#	if( /$val/ ~~ %matchChar ) {
	# 正規表現検索の場合は、上の処理と順番関係なく動くようだ(なぜ？)。
	if( %matchChar ~~ /$val/ ) {
		say "\"%matchChar\"に\"$val\"が含まれている。";
#		say '"' . %matchChar . "\"に\"$val\"が含まれている。";
	}
}
say "以下、実行。";
&asakunoSmart(1);
#	出力結果："%matchChar"に"1"が含まれている。

say "以下、実行。";
&asakunoSmart('朝');
#	出力結果："%matchChar"に"朝"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野智博');
#	出力結果："%matchChar"に"朝来野智博"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('智博');
#	出力結果："%matchChar"に"智博"が含まれている。

say "以下、実行。";
&asakunoSmart(20211221);
#	出力結果：出力なし。


package subPackage::Function::regex;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

	foreach my $asakuno (keys %matchChar) {
#		if( /$val/ =~ $asakuno ) {	←☆全く検索に掛からず。
		# 今回の場合は、右のパターンに一致するかどうかを見ている(本来の挙動通り)。
		if( $asakuno =~ /$val/ ) {
			say "\"%matchChar($asakuno)\"に\"$val\"が含まれている。";
		}
	}
}
say "以下、実行。";
&asakunoSmart(1);
#	出力結果："%matchChar(4774135046)"に"1"が含まれている。

say "以下、実行。";
&asakunoSmart('朝');
#	出力結果："%matchChar(朝来野智博)"に"朝"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野智博');
#	出力結果："%matchChar(朝来野智博)"に"朝来野智博"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('智博');
#	出力結果："%matchChar(朝来野智博)"に"智博"が含まれている。

say "以下、実行。";
&asakunoSmart(20211221);
#	出力結果：出力なし。


package subPackage::Function::normal;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

	foreach my $asakuno ( keys %matchChar ) {
		# 今回の場合は、右のパターンに一致するかどうかを見ている(本来の挙動通り)。
		if( "$asakuno" eq "$val" ) {
			say "\"%matchChar($asakuno)\"に\"$val\"が含まれている。";
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
#	出力結果："%matchChar(朝来野智博)"に"朝来野智博"が含まれている。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('智博');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart(20211221);
#	出力結果：出力なし。


package subPackage::Function::values;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

	foreach my $asakuno ( values %matchChar ) {
		# 今回の場合は、右のパターンに一致するかどうかを見ている(本来の挙動通り)。
		if( "$asakuno" eq "$val" ) {
			say "\"%matchChar($asakuno)\"に\"$val\"が含まれている。";
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
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('智博');
#	出力結果："%matchChar(智博)"に"智博"が含まれている。

say "以下、実行。";
&asakunoSmart(20211221);
#	出力結果："%matchChar(20211221)"に"20211221"が含まれている。


package subPackage::Function::keys;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

	foreach my $asakuno ( keys %matchChar ) {
		# 今回の場合は、右のパターンに一致するかどうかを見ている(本来の挙動通り)。
		if( "$matchChar{$asakuno}" eq "$val" ) {
			say "\"%matchChar($asakuno->$matchChar{$asakuno})\"に\"$val\"が含まれている。";
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
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('朝来野 智博');
#	出力結果：出力なし。

say "以下、実行。";
&asakunoSmart('智博');
#	出力結果："%matchChar(asakuno->智博)"に"智博"が含まれている。

say "以下、実行。";
&asakunoSmart(20211221);
#	出力結果："%matchChar(朝来野智博->20211221)"に"20211221"が含まれている。


package subPackage::Function::array;
say "以下、" . __PACKAGE__;
sub asakunoSmart {
	my $val = shift;

	if(%matchChar ~~ @arrayChar) {
		# 以下、@arrayCharの要素のひとつが%matchCharのキーのひとつに一致する。
		say "マッチ。"
	}
	if(@arrayChar ~~ %matchChar) {
		say "マッチ。"	←☆こっちも出力される(意味は同じか？)。
	}
}
say "以下、実行。";
&asakunoSmart();
#	出力結果：マッチ。
#			：マッチ。

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
