use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "スタック";
my $MAX = 5;

sub push() {
	my ( $sp, $data, $stack) = @_;

	if ( $$sp < $MAX ) {
		# リファレンスでの受け取りになっているため、実体化させた状態での扱いがめんどくさい。
		@$stack[$$sp] = $data;
		$$sp++;
		say "データ：", $data;
	}
	else{
		say "これ以上データ追加不可";
	}

	# リファレンス(参照渡し)で引数を受け取っているため、わざわざ戻す必要が無い。
#	return ($sp, $stack);
}

sub pop() {
	my ($sp, $stack) = @_;

	if ($$sp > 0) {
		$$sp--;
		# ここで戻しているのは取り出した値であって、配列ではない。
		#	配列は、リファレンスとして受け取っているため、変更後も呼び出し関数が把握している。
		return (pop @$stack);
	}
	else {
		return "取り出すデータが存在しません。";
	}
}


sub main() {
	my @stack = (0) x $MAX;
	#say "@stack";	# 0 0 0 0 0
	my $sp = 0;		# スタックポインタ

	for my $ii ( 0..5 ) {
		# 追加したいデータ以外の2種類はリファレンスとして引数で渡す(そのため、その2種類の変更後の値はreturnで戻されない)。
		&push(\$sp, $ii, \@stack);
	}

	for my $ii ( 0..5 ) {
		my ($data) = &pop(\$sp, \@stack);
		say "取り出したデータ：", $data;
	}
}

&main("asakuno");
# 出力結果：
#			データ：0
#			データ：1
#			データ：2
#			データ：3
#			データ：4
#			これ以上データ追加不可
#			取り出したデータ：4
#			取り出したデータ：3
#			取り出したデータ：2
#			取り出したデータ：1
#			取り出したデータ：0
#			取り出したデータ：取り出すデータが存在しません。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
