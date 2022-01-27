use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "リスト";
my $MAX = 5-1;	# 追加可能最大数(5を最大にしたいため、配列要素数を5にするため、4になる)。何が言いたい？

sub add_list() {
	# データ投入関数。
	my ( $listdata, $pointer, $data ) = @_;
#	my @datalist = @$listdata;
#	my @point    = @$pointer;

	my $n = -1;
	foreach my $ii (0..$MAX) {
#		if ( $$listdata[$ii] == undef ) {
#		if ( $$listdata[$ii] == undef and $$listdata[$ii] != 0) {
#		if ( $$listdata[$ii] != 0 or $$listdata[$ii] == undef) {
#		if ( defined $$listdata[$ii] ) {
		unless ( defined $$listdata[$ii] ) {
#		if ( "$$listdata[$ii]" == undef ) {
#		if ( $datalist[$ii] == undef ) {
#		if ( "$$listdata[$ii]" == "" ) {
#		if ( "0" == "" ) {
#		if ( "0" eq "" ) {
#		if ( "$$listdata[$ii]" eq "" ) {
#		if ( "$$listdata[$ii]" eq undef ) {
			# 空の場合に値を設定する。
			$n = $ii;
			last;
		}
#		else {
##			$n = 0;
#			$n = $ii;
#			last;
#		}
	}
#say "$n <-- $data";

	if ( $n == -1 ) {
		return say "書き込み領域不足($data)";
	}

	foreach my $ii (0..$MAX) {
		if( "$$listdata[$ii]" ne "" and "$$pointer[$ii]" eq "" ) {
#		if( "$datalist[$ii]" ne "" and "$point[$ii]" eq "" ) {
			$$pointer[$ii] = $n;
#			$point[$ii] = $n;
			last;
		}
	}

	$$listdata[$n] = $data;
	$$pointer[$n]  = undef;

	return say "データ$$listdata[$n]追加。";
}

sub del_list() {
	# データ削除。
	my ( $listdata, $pointer, $head, $data ) = @_;

	my $n = -1;
	foreach my $ii (0..$MAX) {
		if ( "$$listdata[$ii]" eq "$data" ) {
			$n = $ii;
			last;
		}
	}
	if( $n == -1 ) {
		return say "データ($data)存在せず。";
	}
	if( $n != $$head ) {
		foreach my $ii ( 0..$MAX ) {
			if( $$pointer[$ii] == $n ) {
				$$pointer[$ii] = $$pointer[$n];
			}
		}
	}
	else {
		$$head = $$pointer[$n];
		unless ( defined "$$head" ) {
			$$head = 0;
		}
	}
	$$listdata[$n] = undef;
	$$pointer[$n]  = undef;
	return say "データ($data)削除。";
}

sub put_list() {
	my ($datalist, $head, $pointer) = @_;
	my $p = $$head;

	while () {
		print "$$datalist[$p]-->";
#		if ( $$pointer[$p] == undef ) {
		unless ( defined $$pointer[$p] ) {
			say "EOF";
			last;
		}
		$p = $$pointer[$p];
	}
}

sub main() {
	my @datalist;
	my @pointer;
	my $head = 0;

	print "空表示：\n　　";
	&put_list(\@datalist, \$head, \@pointer);
	print "空削除：\n　　";
	&del_list(\@datalist, \@pointer, \$head, 0);

	for my $ii ( 0..3 ) {
		&add_list(\@datalist, \@pointer, $ii);		# データ追加(用意とも言う)。
	}
	&add_list(\@datalist, \@pointer, "asakuno");
	for my $ii ( 4..5 ) {
		&add_list(\@datalist, \@pointer, $ii);
	}
	&add_list(\@datalist, \@pointer, "tomohiro");

	print "完全：\n　　";
	&put_list(\@datalist, \$head, \@pointer);

	print "3削除：\n　　";
#	say '@pointer：' . $head, $pointer[0];
#	say '@pointer：' . $head, $pointer[1];
#	say '@pointer：' . $head, $pointer[2];
#	say '@pointer：' . $head, $pointer[3];
#	say '@pointer：' . $head, $pointer[4];
#	say '@pointer：' . $head, $pointer[5];
	&del_list(\@datalist, \@pointer, \$head, 3);
#	say '@pointer：' . $head, $pointer[0];
#	say '@pointer：' . $head, $pointer[1];
#	say '@pointer：' . $head, $pointer[2];
#	say '@pointer：' . $head, $pointer[3];
#	say '@pointer：' . $head, $pointer[4];
#	say '@pointer：' . $head, $pointer[5];
	&put_list(\@datalist, \$head, \@pointer);

	print "先頭削除：\n　　";
	&del_list(\@datalist, \@pointer, \$head, 0);
	&put_list(\@datalist, \$head, \@pointer);

	print "asakuno削除：\n　　";
	&del_list(\@datalist, \@pointer, \$head, "asakuno");
	&put_list(\@datalist, \$head, \@pointer);
}
&main("asakuno");
# 出力結果：
#		空表示：
#		　　-->EOF
#		空削除：
#		　　データ(0)存在せず。
#		データ0追加。
#		データ1追加。
#		データ2追加。
#		データ3追加。
#		データasakuno追加。
#		書き込み領域不足(4)
#		書き込み領域不足(5)
#		書き込み領域不足(tomohiro)
#		完全：
#		　　0-->1-->2-->3-->asakuno-->EOF
#		3削除：
#		　　データ(3)削除。
#		0-->1-->2-->asakuno-->EOF
#		先頭削除：
#		　　データ(0)削除。
#		1-->2-->asakuno-->EOF
#		asakuno削除：
#		　　データ(asakuno)削除。
#		1-->2-->EOF


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
