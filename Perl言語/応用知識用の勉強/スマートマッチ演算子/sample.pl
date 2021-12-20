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
		do { $matched = 1; last } if $key =~ /$val/;
	}
	if ( $matched ) {
		say "$valをハッシュの値と一致した($hash{$val})。";
	}

	if(     $val   ~~ %hash   ){ say "ハッシュキー発見($val)。" }
	elsif ( /$val/ ~~ %hash   ){ say "ハッシュ値発見(前：$val)。" }
	elsif ( %hash  ~~ /$val/  ){ say "ハッシュ値発見(後：$val)。" }
	elsif ( $val   ~~ 'a'     ){ say "a発見($val)。" }
	elsif ( $val   ~~ @array  ){ say "配列値発見($val)。" }
	else { say "previous case not true" }
}
&asakunoSwitch(1);
#	出力結果：1をハッシュの値と一致した()。
#	出力結果：ハッシュ値発見(前：1)。

&asakunoSwitch(20211220);
#	出力結果：asakuno発見。
#	出力結果：20211220をハッシュの値と一致した(asakuno)。
#	出力結果：ハッシュキー発見(20211220)。
&asakunoSwitch('asakuno');
#	出力結果：配列値発見(asakuno)。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
