use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "デリファレンス";

sub dereference() {
	my $asakuno = "asakunotomohiro";
	my $deasakuno = \$asakuno;	# 名前の付け方間違えた(リファレンスが代入されている)。

	say "以下、変数用のデリファレンス";
	say '通常の変数$asakuno			：' . "$asakuno";		# 通常の変数$asakuno			：asakunotomohiro
	say 'リファレンス値$deasakuno	：' . "$deasakuno";		# リファレンス値$deasakuno	：SCALAR(0x7fab398058b0)
	say 'デリファレンス値$$deasakuno ：' . "$$deasakuno";	# デリファレンス値$$deasakuno ：asakunotomohiro

	say "-" x 30;

	my @asakuno = ("朝来野智博", "asakunotomohiro", );
	my $refasakuno = \@asakuno;	# 勘違いしていた。@refasakunoに代入すると思っていた。

	say "以下、配列用のデリファレンス";
	say '通常の配列@asakuno			：' . "@asakuno";		# 通常の配列@asakuno			：朝来野智博 asakunotomohiro
	say 'リファレンス値@refasakuno	：' . "$refasakuno";	# リファレンス値@refasakuno	：ARRAY(0x7ffb25805a78)
	say 'デリファレンス値@$refasakuno：' . "@$refasakuno";	# デリファレンス値@$refasakuno：朝来野智博 asakunotomohiro

	say "-" x 30;

	my %asakuno = ("朝来野智博", "asakunotomohiro", );
	my $refasakuno = \%asakuno;

	say "以下、ハッシュ用のデリファレンス";
	say '通常のハッシュ%asakuno		：' . "%asakuno";
					# 通常のハッシュ%asakuno		：%asakuno
	while( my ($key, $value) = each %$refasakuno ) {
		say '通常のハッシュ%asakuno(%key, $value)		：' . "$key -> $value";
					# 通常のハッシュ%asakuno(%key, $value)		：朝来野智博 -> asakunotomohiro
	}
	say 'リファレンス値%refasakuno	：' . "%$refasakuno";
					# リファレンス値%refasakuno	：%HASH(0x7f98a8805c10)
	while( my ($key, $value) = each %$refasakuno ) {
		say 'デリファレンス値%$refasakuno(%key, $value)：' . "$key -> $value";
					# デリファレンス値%$refasakuno(%key, $value)：朝来野智博 -> asakunotomohiro
	}

	say "-" x 30;

}
&dereference();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
