use v5.24;

my @asakuno = ("朝来野", "智博", );

sub asakuno {
	# 暗黙引数から具体的な変数に明示代入している。
	my ( $one, $two ) = @_;

	if ( "朝来野" eq $_[0] ) {
		# 引数の1つ目が一致した場合、新しい文字列を戻している。
		return "智博";
	}

	# 上記判定時に偽になった場合に以下を戻す。
	return "名前err" . $two;
}

say &asakuno();	# 名前err
say &asakuno("関数呼び出し");	# 名前err
say asakuno "朝来野";	# 智博
say &asakuno("智博", "朝来野");	# 名前err朝来野

# 以上。
