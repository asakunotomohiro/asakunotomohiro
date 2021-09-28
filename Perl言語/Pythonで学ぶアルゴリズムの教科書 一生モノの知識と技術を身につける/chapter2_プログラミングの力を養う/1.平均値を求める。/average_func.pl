use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

sub average() {
	# 以下の配列に入っている数字を使い、合計点及び平均点を求める。
	my @score = (70, 98, 92, 88, 64);

	my $total;	# この変数に合計点を入れる。
	for ( @score ) {
		# 以下、合算。
		$total += $_;
	}
	# 以下、平均点を求める(合計÷個数)。
	my $average = $total / @score;

	my @retave = ("合計点：", $total, "平均点：", $average);
	return @retave;
}

my @retAve = &average();
my $message;
while ((my $index, my $value ) = each  @retAve ) {
	if ( 0 == ($index % 2.0) ) {
		$message = $value;
	}
	else {
		say $message . $value;
	}
	# 合計点：412
	# 平均点：82.4
}

say "-*" x 30 . "-";

say "以下、別の方法。";
my @retAve = &average();

print shift @retAve;
say shift @retAve;
#	出力結果：合計点：412

print shift @retAve;
say shift @retAve;
#	出力結果：平均点：82.4

say "ちなみに、配列の中は空になっている。";
say "要素数：" . scalar(@retAve);	# 要素数：0

say "取得したばかりの要素数";
my @retAve = &average();
say "要素数：" . scalar(@retAve);	# 要素数：4

say "以上。"
