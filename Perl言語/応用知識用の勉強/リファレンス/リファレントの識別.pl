use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "リファレントの識別";

sub refFunc(){
	return "ハンドラー関数";
}

sub trace(){
	my ($val) = @_;
#	foreach my $val (@args){
##		switch ($val) {}
#		SWITCH: for(ref($val)){
##			case 'SCALAR' {
#			'SCALAR' && do{
#				say "変数";
#			};
#			'ARRAY' && do{
#				say "配列";
#			};
#			'HASH' && do{
#				say "ハッシュ";
#			};
#			'CODE' && do{
#				say "関数";
#			};
#			'REF' && do{
#				say "リファレンスのリファレンス";
#			};
#		}
#	}

#	foreach my $val (@args){
#		if (ref($val) eq 'SCALAR'){
#			return "変数$$val";
#		}
#		elsif (ref($val) eq 'ARRAY'){
#			return "配列@$val";
#		}
#		elsif (ref($val) eq 'HASH'){
#			return "ハッシュ" . %{$val};
#		}
#		elsif (ref($val) eq 'CODE'){
#			return "関数" . &{$val}();
#		}
#		elsif (ref($val) eq 'REF'){
#			return "リファレンスのリファレンス";
#		}
#		else{
#			return "不明($val)";
#		}
#	}

	if (ref($val) eq 'SCALAR'){
		return "変数$$val";
	}
	elsif (ref($val) eq 'ARRAY'){
		return "配列@$val";
	}
	elsif (ref($val) eq 'HASH'){
		my @sumstring;
		my $hoge;
		# 以下、ハッシュの中身を取り出している。
		foreach my $tmp (keys %$val) {
			$hoge = $tmp . "=>" . $$val{$tmp};
			push (@sumstring, $hoge . ",");
		}
		return "ハッシュ" . "(@sumstring)"
	}
	elsif (ref($val) eq 'CODE'){
		return "関数" . &{$val}();
	}
	elsif (ref($val) eq 'REF'){
		return "リファレンスのリファレンス";
	}
	else{
		return "不明($val)";
	}
}

sub referent() {
	our $foo = 20211128;
	my @ARGV = (20211128, 20211129);
	my %Hash = (20211128=>"朝来野智博", 20211129=>"asakunotomohiro");

	my $scalarref = \$foo;     # 変数
	my $arrayref  = \@ARGV;    # 配列
	my $hashref   = \%Hash;     # ハッシュ
	my $coderef   = \&refFunc; # 関数
	my $globref   = \*foo;
	my $doublescalar = \$scalarref;	# 変数のリファレンスをリファレンス化。

	say ref($scalarref);	# 変数
		# 出力結果：SCALAR
	say ref($arrayref);		# 配列
		# 出力結果：ARRAY
	say ref($hashref);		# ハッシュ
		# 出力結果：HASH
	say ref($coderef);		# 関数
		# 出力結果：CODE
	say ref($doublescalar);	# 変数のリファレンスをリファレンス化。
		# 出力結果：REF
	# ※他にもまだある。

	say "-" x 30;

	say "識別：" . &trace($scalarref);	# 識別：変数20211128
	say "識別：" . &trace($arrayref);	# 識別：配列20211128 20211129
	say "識別：" . &trace($hashref);	# 識別：ハッシュ(20211129=>asakunotomohiro, 20211128=>朝来野智博,)
	say "識別：" . &trace($coderef);	# 識別：関数ハンドラー関数
	say "識別：" . &trace($doublescalar);	# 識別：リファレンスのリファレンス
	say "-" x 30;
	say foreach &trace($scalarref, $arrayref, $hashref, $coderef, $doublescalar);
#			出力結果：変数20211128
#	他の文字列は？
}
&referent("asakuno");

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
