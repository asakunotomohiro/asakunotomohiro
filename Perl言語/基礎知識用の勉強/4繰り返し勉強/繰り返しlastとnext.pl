use v5.24;

my @asakuno = (20210901, 20210902, );

# 繰り返しの入れ子。
#	lastラベルで抜け出る。
LASTJUMP: foreach my $tomohiro ( @asakuno ) {
	foreach my $number ( 1..10 ) {
		if ( $number == 3 ) {
			say "$number：$tomohiro";	# 3：20210901
					# 以下のラベルがない場合、
					#	3：20210902
					# も出力している。
					# lastのため、そもそも1つ目の繰り返しを抜け出ている。
		}
		last LASTJUMP if ( $number == 3);
	}
}
say "終了。";



#	nextで抜け出る。
LASTJUMP: foreach my $tomohiro ( @asakuno ) {
	foreach my $number ( 1..10 ) {
		if ( $number == 3 ) {
			say "$number：$tomohiro";	# 出力なし。
		}
		next LASTJUMP if ( $number == 2);
			# 1つ目のforeach処理に戻るため、3以降にインクリメントされず、処理が終了する。
	}
}
say "終了。";


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
