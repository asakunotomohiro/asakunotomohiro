use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "Boolean確認";

sub booleanTest() {
	my @prime;	# 配列宣言
	$prime[100] = 0;	# 添え字101個目に偽を代入する(PerlにBooleanはない)。
						# 真は0以外であり、今の状態では0番目から100番目まで真が入っていることになる？
						# そんなことないようだ。
	if ( $prime[100] ) {
		say '$prime[100]' . $prime[100];
	}
	elsif ( $prime[0] ) {
		say '$prime[0]' . $prime[0];
	}
	else{
		say "elsif偽";	# これが出力された。
		say "偽：" . '$prime[100]' . $prime[100];
		say "偽：" . '$prime[0]' . $prime[0];
	}
	# 配列を宣言しただけでは、偽が自動的に設定されるのだろう(正確には空文字だが)。
	# 上記の出力結果：
#				elsif偽
#				偽：$prime[100]0
#				偽：$prime[0]

	say "-" x 30;

	foreach my $ii ( 0..99) {
		$prime[$ii] = "true";	# 全ての要素を真にする(0以外もしくは空文字以外を代入)。
	}

	if ( $prime[100] ) {
		say '$prime[100]' . $prime[100];
	}
	elsif ( $prime[0] ) {
		say "真⇒" . '$prime[0]' . $prime[0];	# これが出力された。
		say "偽⇒" . '$prime[100]' . $prime[100];
	}
	else{
		say "elsif偽";
		say "偽：" . '$prime[100]' . $prime[100];
		say "偽：" . '$prime[0]' . $prime[0];
	}
	# 上記の出力結果：
#				真⇒$prime[0]true
#				偽⇒$prime[100]0

	say "-" x 30;

	if ( $prime[100] == '0' ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	say "-" x 30;

	if ( $prime[100] == "0" ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	say "-" x 30;

	if ( $prime[100] == 0 ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	say "-" x 30;

	say '以下、$prime[100]に文字列"0"を代入する。';
	$prime[100] = "0";

	if ( $prime[100] == '0' ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	if ( $prime[100] == "0" ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	if ( $prime[100] == 0 ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	say "以下、比較方法を変更する。";

	if ( "$prime[100]" == '0' ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	if ( "$prime[100]" == "0" ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	if ( "$prime[100]" == 0 ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	say '$prime[100]を単体処理させる';

	if ( $prime[100] ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 実行されない。偽と言うこと。
	}

	if ( $prime[100] ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 実行されない。偽と言うこと。
	}

	if ( $prime[100] ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 実行されない。偽と言うこと。
	}

	# 比較している以上、なぜか一致するのか・・・混乱する。だからPerl嫌いなんだよ。

	say '以下、$prime[100]に文字列\'0\'を代入する。';
	$prime[100] = '0';

	if ( $prime[100] == '0' ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	if ( $prime[100] == "0" ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	if ( $prime[100] == 0 ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	say "代入方法に関係なく、0を代入している以上、0と比較しては真になる。";

	say "以下、比較方法を変更する。";

	if ( "$prime[100]" == '0' ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	if ( "$prime[100]" == "0" ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	if ( "$prime[100]" == 0 ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 0が真になる：$prime[100]0
	}

	say '$prime[100]を単体処理させる';

	if ( $prime[100] ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 実行されない。偽と言うこと。
	}

	if ( $prime[100] ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 実行されない。偽と言うこと。
	}

	if ( $prime[100] ) {
		say "0が真になる：" . '$prime[100]' . $prime[100];
				# 実行されない。偽と言うこと。
	}

}
&booleanTest("asakuno");
# 出力結果：





say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
