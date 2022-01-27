use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "リスト";

sub add_list() {
	# データ投入。
	my ( $listdata, $ii ) = @_;

	# 以下、末尾に追加する。
	push @$listdata, $ii;
# 以下、先頭に追加する。
#	unshift @$listdata, $ii;
}

sub del_list() {
	# データ削除。
	my ( $listdata, $data) = @_;
	my @datalist = @$listdata;	# シャローコピー(浅い複製)とのこと。

	if ($#datalist <= 0) {
		return say "リストデータ存在せず。";
	}
	else {
		my $listdataIndex = -1;
#		while( my ($index, $value) = each @$listdata ){
		while( my ($index, $value) = each @datalist ){
			if ( "$value" eq "$data" ) {
				$listdataIndex = $index;
				last;	# シャローコピーとは言え、元のリファレンス配列から切り離せるようで、リファレンスカウントにはならずにループを抜け出せる。
			}
		}
		if ( $listdataIndex == -1 ) {
			return say "指定データ(" . $data . ")存在せず。";
		}
		else {
			# リストデータから削除。
			splice @$listdata, $listdataIndex, 1;
		}

		return @datalist;
	}
}

sub put_list() {
	my ($datalist) = @_;

	foreach my $value (@$datalist) {
		print "$value--->";
	}
	say "EOF";
}

sub main() {
	my @datalist;

	print "空表示：\n　　";
	&put_list(\@datalist);
	print "空削除：\n　　";
	&del_list(\@datalist, 0);

	for my $ii ( 0..3 ) {
		&add_list(\@datalist, $ii);		# データ追加(用意とも言う)。
	}
	&add_list(\@datalist, "asakuno");		# データ追加(用意とも言う)。
	for my $ii ( 4..5 ) {
		&add_list(\@datalist, $ii);
	}
	&add_list(\@datalist, "tomohiro");

	print "完全：\n　　";
	&put_list(\@datalist);

	print "3削除：\n　　";
	&del_list(\@datalist, 3);
	&put_list(\@datalist);

	print "asakuno削除：\n　　";
	&del_list(\@datalist, "asakuno");
	&put_list(\@datalist);

	print "先頭削除：\n　　";
	&del_list(\@datalist, 0);
	&put_list(\@datalist);
}
&main("asakuno");
# 出力結果：


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
