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
	my @datalist = @$listdata;

#say "@$listdata";
	if (@$listdata <= 0) {
	#if ($#datalist <= 0) {
		return say "リストデータ存在せず。";
	}
	else {
		my $listdataIndex = -1;
		while( my ($index, $value) = each @$listdata ){
#		while( my ($index, $value) = each @datalist ){
#say "$index, $value";
#			if ( $value eq $data ) {
			if ( "$value" eq "$data" ) {
#say "$index, $value";
				$listdataIndex = $index;
#say "$listdataIndex";
#			splice @$listdata, $listdataIndex, 1;
#				$index = 0;
#				$value = 0;
#				$listdata = 0;
#				$data = 0;
#				last;	←☆これを活かす場合、リファレンスカウントが有効のまま関数を抜けることになる(ループではなく関数)。
			}
		}
#		$listdata = 0;
#		say "$listdata";
		if ( $listdataIndex == -1 ) {
#			return say "指定データ(" . $data . ")存在せず。";
			say "指定データ(" . $data . ")存在せず。";
			return -1;
		}
		else {
			# リストデータから削除。
#			say "@$listdata";
			splice @$listdata, $listdataIndex, 1;
#			splice @datalist, $listdataIndex, 1;
#			say "@$listdata";
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
#	say "-" x 30;
#	say "@datalist";
#	say "-" x 30;
	print "3削除：\n　　";
	&del_list(\@datalist, 3);
	&put_list(\@datalist);
#	say "-" x 30;
#	say "@datalist";
#	say "-" x 30;
	print "asakuno削除：\n　　";
	&del_list(\@datalist, "asakuno");
	&put_list(\@datalist);
}
&main("asakuno");
# 出力結果：


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
