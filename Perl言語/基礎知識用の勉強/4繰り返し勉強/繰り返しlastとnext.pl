use v5.24;

my @asakuno = (20210901, 20210902, );
my $tomohiro = 20210901;

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
			say "$number：$tomohiro";	# 3：20210901
										# 3：20210902
						# 1つ目の条件部分に戻ってくるため、2行が出力される。
		}
		next LASTJUMP if ( $number == 3);
	}
}
say "終了。";


# 以上。
