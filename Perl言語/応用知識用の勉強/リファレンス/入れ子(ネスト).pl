use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");
my %asakuno = (
				asakuno => "朝来野",
				tomohiro => "智博",
				asakunotomohiro => "朝来野智博",
			);

say "入れ子リファレンス";

say "以下、変数リファレンス";
sub scalarReference() {
	my $asakuno1 = shift;		# 変数にスカラー値を代入する。
	my $tomohiro = \$asakuno1;	# それをリファレンスとして別の変数に代入する。
	say $asakuno;			# 出力結果：朝来野智博
	$asakuno = \$tomohiro;		# さらに、リファレンス変数が代入されている変数を別の変数にリファレンスとして代入する(混乱する)。
	say $asakuno;				# それを出力する。
					# 出力結果：REF(0x7fb5df0058c8)	←☆tomohiro が入っていると思っている。
	say '$asakunoをデリファレンス($$asakuno)：' . "$$asakuno";	# $asakuno1 が入っていると思っている。
					# 出力結果：$asakunoをデリファレンス($$asakuno)：SCALAR(0x7fe25101c6b0)
	say '$$asakunoをデリファレンス($$$asakuno)：' . "$$$asakuno";	# スカラー値 が入っていると思っている。
					# 出力結果：$$asakunoをデリファレンス($$$asakuno)：朝来野
#	say '$$$asakunoをデリファレンス($$$$asakuno)：' . "$$$$asakuno";	# エラー
					# 出力結果：Can't use string ("朝来野") as a SCALAR ref while "strict refs" in use at 入れ子(ネスト).pl line 19.

	say \$asakuno1;	# SCALAR(0x7fe25101c6b0)	←☆上記と同じ結果が出ている。

	# 苦労してまでスカラー変数をネストする必要性は感じられない。
}
&scalarReference(@asakuno);

say;
say "以下、配列のリファレンスを配列のリファレンスで管理する。";
sub arrayReference() {
	my @asakuno1 = (\@_);			# 配列に配列リファレンスを代入する。
	my @tomohiro = (\@asakuno1);	# それをリファレンスとして別の配列に代入する。
	say "@asakuno";			# 出力結果：朝来野智博
	@asakuno = (\@tomohiro);		# さらに、リファレンス配列が代入されている配列を別の配列にリファレンスとして代入する(混乱する)。
	say "@asakuno";					# それを出力する。
					# 出力結果：ARRAY(0x7f9172005a30)	←☆@tomohiro が入っていると思っている。

#	say '@asakunoをデリファレンス(@$asakuno)：' . "@$asakuno";	# @asakuno1 が入っていると思っている。
					# 出力結果：Not an ARRAY reference at 入れ子(ネスト).pl line 38.
#	say '@$asakunoをデリファレンス(@$$asakuno)：' . "@$$asakuno";	# スカラー配列 が入っていると思っている。
					# 出力結果：Not an ARRAY reference at 入れ子(ネスト).pl line 40.
#	say '$$$asakunoをデリファレンス($$$$asakuno)：' . "$$$$asakuno";	# エラー
					# 出力結果：Can't use string ("朝来野") as a SCALAR ref while "strict refs" in use at 入れ子(ネスト).pl line 19.

#	say '@asakunoをデリファレンス(@$asakuno[0])：' . "@$asakuno[0]";	# @asakuno1 が入っていると思っている。
					# 出力結果：Not an ARRAY reference at 入れ子(ネスト).pl line 46.

#	say '@asakunoをデリファレンス($$asakuno[0])：' . "$$asakuno[0]";	# @asakuno1 が入っていると思っている。
					# 出力結果：Not an ARRAY reference at 入れ子(ネスト).pl line 49.

	say '@asakunoの要素を出力($asakuno[0])：' . "$asakuno[0]";	# @tomohiro が入っていると思っている。
					# 出力結果：@asakunoの要素を出力($asakuno[0])：ARRAY(0x7f9172005a30)
	say '$asakuno[0]をデリファレンス($asakuno[0]->[0])：' . "$asakuno[0]->[0]";	# @asakuno1 が入っていると思っている。
					# 出力結果：$asakuno[0]をデリファレンス($asakuno[0]->[0])：ARRAY(0x7f91720059e8)
	say '$asakuno[0]->[0]をデリファレンス($asakuno[0]->[0][0])：' . "$asakuno[0]->[0][0]";	# @_ が入っていると思っている。
					# 出力結果：$asakuno[0]->[0]をデリファレンス($asakuno[0]->[0][0])：ARRAY(0x7f9172005d00)

	say "以下の方法で、ようやく渡された引数の配列内容を表示することが出来た。";
	say '$asakuno[0]->[0][0]をデリファレンス($asakuno[0]->[0][0][0])：' . "$asakuno[0]->[0][0][0]";	# @_[0] が入っていると思っている。
					# 出力結果：$asakuno[0]->[0][0]をデリファレンス($asakuno[0]->[0][0][0])：朝来野

	say '$asakuno[0]->[0][0]をデリファレンス($asakuno[0]->[0][0][1])：' . "$asakuno[0]->[0][0][1]";	# @_[1] が入っていると思っている。
					# 出力結果：$asakuno[0]->[0][0]をデリファレンス($asakuno[0]->[0][0][1])：智博

	$asakuno[0]->[0][0][1] = "asakuno";
	# push( $asakuno[0]->[0][0], "配列リファレンスの勉強" );	err
					# 出力結果：Experimental push on scalar is now forbidden at 入れ子(ネスト).pl line 67, near ""配列リファレンスの勉強" )"


	say \@asakuno1;	# ARRAY(0x7f91720059e8)	←☆上記と同じ結果が出ている。
	say \@_;		# ARRAY(0x7f9172005d00)
}
&arrayReference(@asakuno);

say;
say "以下、配列リファレンス";
# 以下やりたかったことは、配列をリファレンスとして扱うだけのこと(上記とは異なる)。
sub arrayScalarReference() {
	my $asakuno1 = \@_;			# 配列に配列リファレンスを代入する。
	my $tomohiro = \$asakuno1;	# それをリファレンスとして別の配列に代入する。
	say "配列リファレンス代入前：$asakuno";			# 配列リファレンス代入前：REF(0x7f8f59805a30)
	$asakuno = \$tomohiro;		# さらに、リファレンス配列が代入されている変数を別の変数にリファレンスとして代入する(混乱する)。
	say "配列リファレンス代入後：$asakuno";			# それを出力する($tomohiroが入っていると思っている)。
								# 出力結果：配列リファレンス代入後：REF(0x7f8f59805b68)
								say \$tomohiro;	# REF(0x7f8f59805b68)

	say;
	say '$asakunoを出力($asakuno)：' . "$asakuno";	# $tomohiro のアドレスが入っていると思っている。
					# 出力結果：$asakunoを出力($asakuno)：REF(0x7fa5b7006368)
	say '$tomohiroのアドレス：' . \$tomohiro;	# $tomohiroのアドレス：REF(0x7fa5b7006368)
	say '$asakunoをデリファレンス($$asakuno)：' . "$$asakuno";	# $tomohiro が入っていると思っている。
					# 出力結果：$asakunoをデリファレンス($$asakuno)：REF(0x7fa5b7006338)
	my $deasakuno = $$asakuno;	# $tomohiro が代入されたと思っている。
	say '$deasakunoを出力($deasakuno)：' . "$deasakuno";	# $tomohiro が入っていると思っている。
					# 出力結果：$deasakunoを出力($deasakuno)：REF(0x7fa5b7006338)
	say '$deasakunoを出力($deasakuno)：' . "$$asakuno";	# $tomohiro が入っていると思っている。
					# 出力結果：$deasakunoを出力($deasakuno)：REF(0x7fa5b7006338)

	say;
	say '$asakuno1のアドレス：' . \$asakuno1;	# $asakuno1のアドレス：REF(0x7fa5b7006338)
	say '$asakuno1の値　　　：' . "$asakuno1";	# $asakuno1の値　　　：ARRAY(0x7fa5b7013160)
	say '$deasakunoをデリファレンス($$deasakuno)：' . "$$deasakuno";	# $asakuno1 が入っていると思っている。
					# 出力結果：$deasakunoをデリファレンス($$deasakuno)：ARRAY(0x7fa5b7013160)
	say '$deasakunoをデリファレンス($$deasakuno)：' . "$$$asakuno";	# $asakuno1 が入っていると思っている。
					# 出力結果：$deasakunoをデリファレンス($$deasakuno)：ARRAY(0x7fa5b7013160)

	say;
	my $dedeasakuno = $$deasakuno;	# 引き数値@_ が代入されたと思っている。
	say '$dedeasakunoのアドレス：' . \$dedeasakuno;	# $dedeasakunoのアドレス：REF(0x7fa5b7012ea8)
	say '$dedeasakunoの値　　　：' . "$dedeasakuno";	# $dedeasakunoの値　　　：ARRAY(0x7fa5b7013160)
	#say '$dedeasakunoをデリファレンス($$dedeasakuno)：' . "$$dedeasakuno";	# @_ が入っていると思っている。
					# Not a SCALAR reference at 入れ子(ネスト).pl line 116.
	#say '$dedeasakunoをデリファレンス($$dedeasakuno)：' . "$$$$asakuno";	# @_ が入っていると思っている。
					# Not a SCALAR reference at 入れ子(ネスト).pl line 118.
	#say '$dedeasakunoをデリファレンス($$dedeasakuno)：' . "$dedeasakuno[0]";	# @_ が入っていると思っている。
	say '$dedeasakunoをデリファレンス($$dedeasakuno)：' . "@$$$asakuno[0]";	# @_ が入っていると思っている。
					# 出力結果：朝来野
	say '$dedeasakunoをデリファレンス($$dedeasakuno)：' . "@$$$asakuno[1]";	# @_ が入っていると思っている。
					# 出力結果：智博
	say;
	my @derefasakuno = @$dedeasakuno;	# 引き数値@_ が代入されたと思っている。
	say '$dedeasakunoをデリファレンス(@$dedeasakuno)：' . "@$dedeasakuno";	# @_ が入っていると思っている。
					# $dedeasakunoをデリファレンス(@$dedeasakuno)：朝来野 智博
	say '$dedeasakunoの1つ目の要素($$dedeasakuno[0])：' . "$$dedeasakuno[0]";	# @_ が入っていると思っている。
					# $dedeasakunoの1つ目の要素($$dedeasakuno[0])：朝来野
	say '$dedeasakunoの2つ目の要素($$dedeasakuno[1])：' . "$$dedeasakuno[1]";	# @_ が入っていると思っている。
					# $dedeasakunoの2つ目の要素($$dedeasakuno[1])：智博
}
&arrayScalarReference(@asakuno);

say $asakuno[0]->[0][0][0];	# 朝来野
say $asakuno[0]->[0][0][1];	# asakuno
say $asakuno[0]->[0][0][2];	# 空文字列



say;
say "以下、ハッシュリファレンス";
sub hashReference() {
	my $refasakuno = shift;

#	以下、失敗(呼び出し方法不明)。
#	my $asakunoRef = {
#					{
#						20211217=>"本日は",
#						asakuno=>"朝来野",
#						tomohiro=>"智博",
#					}=>
#					{
#						20211217=>"晴天なり。",
#						asakuno=>"朝来野",
#						tomohiro=>"智博",
#					},
#				};
#	say $asakunoRef;
#	say %$asakunoRef;

	my $asakunoRef = {
				20211217=>{
					20211218=>"本日は",
					asakuno=>"[asakuno]",
					tomohiro=>"[tomohiro]",
				},
				20211219=>{
					20211220=>"晴天なり。",
					asakuno=>"[朝来野]",
					tomohiro=>"[智博]",
				},
			};
	say $asakunoRef;						# HASH(0x7fbed4005700)
	say $asakunoRef->{20211217};			# HASH(0x7fbed40053a0)
	say @{$asakunoRef}{20211217};			# HASH(0x7fbed40053a0)
	say $asakunoRef->{20211217}{20211218};	# 本日は
	say $asakunoRef->{20211217}{asakuno};	# [asakuno]
	say $asakunoRef->{20211219}{20211220};	# 晴天なり。
	say $asakunoRef->{20211219}{tomohiro};	# [智博]
}
&hashReference(\%asakuno);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
