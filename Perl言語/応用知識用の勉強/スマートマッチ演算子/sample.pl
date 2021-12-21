use v5.10.1;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。

sub asakunoSwitch {
	my $val = shift;
	my @array = ('asakuno', 42, 20211220, );
	my %hash  = (20211220=>'asakuno', tomohiro=>20211221, );

	if ( exists $hash{$val} ) {
		say $hash{$val} . "発見。";
	}

	my $matched = 0;
	foreach my $key ( keys %hash ) {
		# key値が$valの正規表現パターンに一致する場合、マッチ変数にkey値を代入後、for文を抜ける。
		do { $matched = $key; last } if $key =~ /$val/;
	}
	if ( $matched ) {
		# 上記検索に掛かった場合、以下のメッセージを出力する。
		say "$valをハッシュの値と一致した($hash{$matched})。";
	}

	# %hasとのスマートマッチは、$valが含まれていれば発見したと見なす。
	if(     $val   ~~ %hash   ){ say "ハッシュキー発見($val)。" }
	elsif ( $val   ~~ %hash   ){ say "ハッシュ値発見(前：$val)。" }
	elsif ( %hash  ~~ $val    ){ say "ハッシュ値発見(後：$val)。" }
	# $valにaが含まれていれば発見したと見なす。
#	elsif ( $val   ~~ 'a'     ){ say "a発見($val)。" }
	elsif ( 'a'    ~~ $val    ){ say "a発見($val)。" }	# 上記と変わらない結果が出てきた(順序大事なんだよね？)。
	# @arrayに$valが含まれてば発見したと見なす。
	elsif ( $val   ~~ @array  ){ say "配列値発見($val)。" }
	else { say "previous case not true" }
}
&asakunoSwitch(1);
#	出力結果：1をハッシュの値と一致した(asakuno)。
#	出力結果：previous case not true

&asakunoSwitch(20211220);
#	出力結果：asakuno発見。
#	出力結果：20211220をハッシュの値と一致した(asakuno)。
#	出力結果：ハッシュキー発見(20211220)。
&asakunoSwitch('asakuno');
#	出力結果：配列値発見(asakuno)。

&asakunoSwitch('a');
#	出力結果：a発見(a)。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
