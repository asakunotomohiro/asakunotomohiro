use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "アルゴリズムキュー";
my $MAX = 6;

sub enqueue() {
	# データ投入。
	my ( $head, $tail, $data, $enqueue) = @_;
	my $nt = ($$tail+1) % $MAX;	# 書籍での説明が糞で、日本語が使いこなせていないことに憤りを・・・感じない(たかがしれているからな)。
#	my $nt = $$tail % $MAX;

#	if ( $nt == $MAX ) {
#	if ( $nt < $MAX ) {
#	if ( $$tail < $MAX ) {
#	if ( $$tail == $MAX ) {
#	if ( ($$tail+1) == $MAX ) {
#	if ( ($nt+1) == $MAX ) {
	if ( $nt == 0 ) {
		say "これ以上データ追加不可";
	}
	else{
		# リファレンスでの受け取りになっているため、実体化させた状態での扱いがめんどくさい。
		#	以下、先頭から追加している。
		@$enqueue[$$tail] = $data;
		$$tail = $nt;
#		say $$tail, $nt;
		say "追加データ：", $data;
	}

	# リファレンス(参照渡し)で引数を受け取っているため、わざわざ戻す必要が無い。
#	return ($sp, $enqueue);
}

sub dequeue() {
	# データ取り出し。
	my ($head, $tail, $dequeue) = @_;

#		say "$$head, $$tail";
	if ($$head == $$tail) {
		return "取り出すデータが存在しません。";
	}
	else {
#		say "$$head, $$tail";
#		my $data = @$dequeue[$$head];
#		$$head = ($$head+0) % $MAX;
		$$head++;
#		say "$$head, $$tail";

		return (shift @$dequeue);
		# ここで戻しているのは取り出した値であって、配列ではない。
		#	配列は、リファレンスとして受け取っているため、変更後も呼び出し関数が把握している。
	}
}

sub main() {
	my @queue = (0) x $MAX;
	my $head = 0;		# 取り出し位置。
	my $tail = 0;		# 投入位置。

	for my $ii ( 0..5 ) {
		# 追加したいデータ以外の2種類はリファレンスとして引数で渡す(そのため、その2種類の変更後の値はreturnで戻されない)。
		&enqueue(\$head, \$tail, $ii, \@queue);
#	say "main:$head, $tail";
	}
#	say "deta_main:$head, $tail";

#	&enqueue(\$head, \$tail, "最後に追加。", \@queue);

	for my $ii ( 0..5 ) {
		my ($data) = &dequeue(\$head, \$tail, \@queue);
		say "取り出したデータ：", $data;
	}
}
&main("asakuno");
# 出力結果：
#			追加データ：0
#			追加データ：1
#			追加データ：2
#			追加データ：3
#			追加データ：4
#			これ以上データ追加不可
#			取り出したデータ：0
#			取り出したデータ：1
#			取り出したデータ：2
#			取り出したデータ：3
#			取り出したデータ：4
#			取り出したデータ：取り出すデータが存在しません。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
