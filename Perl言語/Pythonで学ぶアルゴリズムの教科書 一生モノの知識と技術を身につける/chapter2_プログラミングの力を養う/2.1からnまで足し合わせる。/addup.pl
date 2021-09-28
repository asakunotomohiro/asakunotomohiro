use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

sub addup1() {
	my $total;	# この変数に合計点を入れる。
	for ( 1..10 ) {
		# 以下、合算。
		$total += $_;
	}

	return $total;
}

my $retAve = &addup1();
say $retAve;	# 55

say "-" x 30;
say "ルール2";

sub addup2() {
	my ($argnum) = @_;
	my $start = 1;	# リストコンテキストの開始用スカラー変数。
	my $total;	# この変数に合計点を入れる。
	if ( $argnum =~ /^[0-9]+$/ ) {
		;
	}
	else {
		$start = $argnum = 0;
	}
	for ( $start..$argnum ) {
		# 以下、合算。
		$total += $_;
	}

	return $total;
}

say &addup2();	# 0
say &addup2(10);	# 55
say &addup2('a');	# 0

say "-" x 30;
say "ルール3";

sub addup3() {
	my ($argnum) = @_;
	my $start = 1;	# リストコンテキストの開始用スカラー変数。
	if ( $argnum =~ /^[0-9]+$/ ) {
		;
	}
	else {
		$start = $argnum = 0;
	}
	my $total = ($start+$argnum)*$argnum/2;

	return $total;
}

say &addup3();	# 0
say &addup3(10);	# 55
say &addup3('a');	# 0
say &addup3(10, 20);	# 55


say "-" x 30;
say "カール・フリードリヒ・ガウス";

sub AddupGauss() {
	my ($start, $end) = @_;
	if ( scalar(@_) == 2 ) {
		($start, $end) = @_;
	}
	elsif ( scalar(@_) == 1 ) {
		($end) = @_;
		$start = 1;
	}
	if ( $start =~ /^[0-9]+$/ && $end =~ /^[0-9]+$/ ) {
		;
	}
	else {
		$start = $end = 0;
	}
	my $total = ($start+$end)*$end/2;

	return $total;
}

say &AddupGauss();	# 0
say &AddupGauss(10);	# 55
say &AddupGauss('a');	# 0
say &AddupGauss(1, 10);	# 55
say &AddupGauss(1, 100);	# 5050








say "以上。"
