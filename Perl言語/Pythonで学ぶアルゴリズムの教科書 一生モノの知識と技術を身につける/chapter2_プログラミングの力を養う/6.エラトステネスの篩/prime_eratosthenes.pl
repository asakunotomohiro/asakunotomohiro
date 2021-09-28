use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "エラトステネスの篩";

sub eratosthenes_sieve() {
#	my $eratosthenes = shift @_;
	my ($eratosthenes, @argprime) = @_;

	for ( my $ii = ($eratosthenes + $eratosthenes); $ii <= $#argprime; $ii += $eratosthenes ) {
		$argprime[$ii] = "false";
#		say $argprime[$ii] . "ここにはこない？" . $ii;
	}
	say "$eratosthenesの倍数をふるい落とした。";
	&eratosthenes_table( @argprime );
	while ( $eratosthenes < $#argprime ) {
		$eratosthenes++;
		if ( $argprime[$eratosthenes] eq "true" ) {
			last;
		}
	}
	return ($eratosthenes, @argprime);
}

sub eratosthenes_table() {
	my @argprime = @_;
#	my ($eratosthenes, @argprime) = @_;
	my $outputTable = "";
#say scalar(@argprime) . "←";
#say $#pargrime . "←";

#say $outputTable;
	my $forvaluemax = @argprime;
#	for my $ii ( 0..$forvaluemax ) {
	for my $ii ( 0..$#argprime ) {
#say "いくつ？:" . $#argprime;	←☆99だった。
#say '$argprime[99]：' . "$argprime[99]";
#say  "$argprime[99]";
		if ( $argprime[$ii] eq "true" ) {
			# 以下のフォーマット後に代入演算子で連結する。
			$outputTable .= sprintf("%2s, ", $ii);
#			say "[$ii:$outputTable]\n";
#exit;
#			say "[$argprime[$ii]]";
		}
		else {
			#$outputTable += "/, ";
#			$outputTable .= printf("／, ");
			$outputTable .= sprintf("／, ");
		}
		if ( ($ii % 10) == 9 ) {
#			$outputTable += '\n';
#			$outputTable += printf("\n");
#			$outputTable .= printf("\n");
			$outputTable .= sprintf("\n");
#			$outputTable .= "\n";
#			say "値⇒" . $outputTable . "←";
#			exit;
		}
#		say "110?:" . $ii if $ii >= 100;
	}
	say $outputTable =~ s/\s*$//mgr;
	say;
}

sub prime_eratosthenes() {
#	my @prime = (1..100);	# 一度に100個の配列要素を作る。
	my @prime;	# 配列宣言
#	$prime[100] = 0;	# 添え字101個目に偽を代入する(PerlにBooleanはない)。
						# 真は0以外であり、今の状態では0番目から100番目まで真が入っていることになる。
	$prime[99] = 0;
#	$prime[0] = "false";
#	$prime[1] = "false";
#say scalar(@prime) . "←";
#say $#prime . "←";
	foreach my $ii ( 2..$#prime ) {
		$prime[$ii] = "true";	# 要素を真にする(0以外もしくは空文字以外を代入)。
	}
#say $prime[99];

	# ふるい落とし始める最初の値を用意する。
	my $eratosthenes = 2;
	&eratosthenes_table( @prime );
	while ( $eratosthenes < 10 ) {	# √99 まで行う。
#		$eratosthenes = &eratosthenes_sieve( $eratosthenes, @prime );
#		my ($eratosthenes, @prime) = &eratosthenes_sieve( $eratosthenes, @prime );
		# 以下、リファレンスを勉強していないため、苦肉の策。
		($eratosthenes, @prime) = &eratosthenes_sieve( $eratosthenes, @prime );
	}
}
&prime_eratosthenes("asakuno");
# 出力結果：
#			エラトステネスの篩
#			／, ／,  2,  3,  4,  5,  6,  7,  8,  9,
#			10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
#			20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
#			30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
#			40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
#			50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
#			60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
#			70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
#			80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
#			90, 91, 92, 93, 94, 95, 96, 97, 98, 99,
#			
#			2の倍数をふるい落とした。
#			／, ／,  2,  3, ／,  5, ／,  7, ／,  9,
#			／, 11, ／, 13, ／, 15, ／, 17, ／, 19,
#			／, 21, ／, 23, ／, 25, ／, 27, ／, 29,
#			／, 31, ／, 33, ／, 35, ／, 37, ／, 39,
#			／, 41, ／, 43, ／, 45, ／, 47, ／, 49,
#			／, 51, ／, 53, ／, 55, ／, 57, ／, 59,
#			／, 61, ／, 63, ／, 65, ／, 67, ／, 69,
#			／, 71, ／, 73, ／, 75, ／, 77, ／, 79,
#			／, 81, ／, 83, ／, 85, ／, 87, ／, 89,
#			／, 91, ／, 93, ／, 95, ／, 97, ／, 99,
#			
#			3の倍数をふるい落とした。
#			／, ／,  2,  3, ／,  5, ／,  7, ／, ／,
#			／, 11, ／, 13, ／, ／, ／, 17, ／, 19,
#			／, ／, ／, 23, ／, 25, ／, ／, ／, 29,
#			／, 31, ／, ／, ／, 35, ／, 37, ／, ／,
#			／, 41, ／, 43, ／, ／, ／, 47, ／, 49,
#			／, ／, ／, 53, ／, 55, ／, ／, ／, 59,
#			／, 61, ／, ／, ／, 65, ／, 67, ／, ／,
#			／, 71, ／, 73, ／, ／, ／, 77, ／, 79,
#			／, ／, ／, 83, ／, 85, ／, ／, ／, 89,
#			／, 91, ／, ／, ／, 95, ／, 97, ／, ／,
#			
#			5の倍数をふるい落とした。
#			／, ／,  2,  3, ／,  5, ／,  7, ／, ／,
#			／, 11, ／, 13, ／, ／, ／, 17, ／, 19,
#			／, ／, ／, 23, ／, ／, ／, ／, ／, 29,
#			／, 31, ／, ／, ／, ／, ／, 37, ／, ／,
#			／, 41, ／, 43, ／, ／, ／, 47, ／, 49,
#			／, ／, ／, 53, ／, ／, ／, ／, ／, 59,
#			／, 61, ／, ／, ／, ／, ／, 67, ／, ／,
#			／, 71, ／, 73, ／, ／, ／, 77, ／, 79,
#			／, ／, ／, 83, ／, ／, ／, ／, ／, 89,
#			／, 91, ／, ／, ／, ／, ／, 97, ／, ／,
#			
#			7の倍数をふるい落とした。
#			／, ／,  2,  3, ／,  5, ／,  7, ／, ／,
#			／, 11, ／, 13, ／, ／, ／, 17, ／, 19,
#			／, ／, ／, 23, ／, ／, ／, ／, ／, 29,
#			／, 31, ／, ／, ／, ／, ／, 37, ／, ／,
#			／, 41, ／, 43, ／, ／, ／, 47, ／, ／,
#			／, ／, ／, 53, ／, ／, ／, ／, ／, 59,
#			／, 61, ／, ／, ／, ／, ／, 67, ／, ／,
#			／, 71, ／, 73, ／, ／, ／, ／, ／, 79,
#			／, ／, ／, 83, ／, ／, ／, ／, ／, 89,
#			／, ／, ／, ／, ／, ／, ／, 97, ／, ／,


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
