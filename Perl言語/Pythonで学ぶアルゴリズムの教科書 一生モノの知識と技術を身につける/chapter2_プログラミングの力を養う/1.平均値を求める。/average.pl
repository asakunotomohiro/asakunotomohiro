use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

# 以下の配列に入っている数字を使い、合計点及び平均点を求める。
my @score = (70, 98, 92, 88, 64);

my $total;	# この変数に合計点を入れる。
for ( @score ) {
	# 以下、合算。
	$total += $_;
}
# 以下、平均点を求める(合計÷個数)。
my $average = $total / @score;

say "合計点：$total";	# 合計点：412
say "平均点：$average";	# 平均点：82.4

say "-*" x 30 . "-";

@score = (70, 98, 92, 88, 64);
# 以下、全く同じ事をする。
$total = 0;
for my $value ( @score ) {
	# 取り出した値の格納変数を明記する。
	$total += $value;
}
# 配列の個数を変数に取り出す。
my $count = @score;
$average = $total / $count;

say "合計点：$total";	# 合計点：412
say "平均点：$average";	# 平均点：82.4

say "以上。"
