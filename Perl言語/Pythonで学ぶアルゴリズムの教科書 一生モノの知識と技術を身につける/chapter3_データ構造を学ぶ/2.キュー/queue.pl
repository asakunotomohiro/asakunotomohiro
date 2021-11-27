use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "キュー";

sub enqueue() {
	# データ投入。
	my ( $ii, $enqueue) = @_;

	unshift @$enqueue, $ii;
}

sub dequeue() {
	# データ取り出し。
	my ( $dequeue) = @_;

	if (@$dequeue <= 0) {
		return "取り出すデータが存在しません。";
	}
	else {
		return shift @$dequeue;
	}
}

sub main() {
	my @queue;

	for my $ii ( 0..3 ) {
		&enqueue($ii, \@queue);
	}
	&enqueue("asakuno", \@queue);
	for my $ii ( 4..5 ) {
		&enqueue($ii, \@queue);
	}
	&enqueue("tomohiro", \@queue);
#	for my $ii ( 0..8 ) {
#		my $data = &dequeue(\@queue);
#		say "取り出したデータ：", $data;
#	}
		say &dequeue(\@queue);	# tomohiro
		say &dequeue(\@queue);	# 5
}
&main("asakuno");
# 出力結果：
#			取り出したデータ：tomohiro
#			取り出したデータ：5
#			取り出したデータ：4
#			取り出したデータ：asakuno
#			取り出したデータ：3
#			取り出したデータ：2
#			取り出したデータ：1
#			取り出したデータ：0
#			取り出したデータ：取り出すデータが存在しません。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
