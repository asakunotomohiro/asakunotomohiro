use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "キュー";

sub enqueue() {
	# データ投入。
	my ( $ii, $enqueue) = @_;

	# 以下、末尾に追加する。
	push @$enqueue, $ii;
# 以下、先頭に追加する。
#	unshift @$enqueue, $ii;
}

sub dequeue() {
	# データ取り出し。
	my ( $dequeue) = @_;

	if (@$dequeue <= 0) {
		return "取り出すデータが存在しません。";
	}
	else {
		# 以下、先頭から取り出す。
		return shift @$dequeue;
	}
}

sub main() {
	my @queue;

	for my $ii ( 0..3 ) {
		&enqueue($ii, \@queue);		# 先に入れている。
	}
	&enqueue("asakuno", \@queue);	# 途中に追加。
	for my $ii ( 4..5 ) {
		&enqueue($ii, \@queue);
	}
	&enqueue("tomohiro", \@queue);	# 最後に追加。
#	for my $ii ( 0..8 ) {
#		my $data = &dequeue(\@queue);
#		say "取り出したデータ：", $data;
#	}
		say &dequeue(\@queue);	# 0
		say &dequeue(\@queue);	# 1
}
&main("asakuno");
# 出力結果：
#			取り出したデータ：0
#			取り出したデータ：1
#			取り出したデータ：2
#			取り出したデータ：3
#			取り出したデータ：asakuno
#			取り出したデータ：4
#			取り出したデータ：5
#			取り出したデータ：tomohiro
#			取り出したデータ：取り出すデータが存在しません。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
