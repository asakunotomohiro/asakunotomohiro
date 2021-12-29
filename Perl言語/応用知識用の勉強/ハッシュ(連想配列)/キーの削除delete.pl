use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "ハッシュ";

sub associativearray() {
	my %asakuno = (
		asakuno => 20210922,
		tomohiro => 4873118247,
		asakunotomohiro => "朝来野智博",
	);

	while( my ($key, $value) = each %asakuno ) {
		say "$key -> $value";
		# 出力結果：
#				asakunotomohiro -> 朝来野智博
#				asakuno -> 20210922
#				tomohiro -> 4873118247
	}

	say "-" x 30;
	say "$asakuno{'asakuno'}";	# 20210922
	say "-" x 30;
	say "以下、削除実施(1つなのでスカラー)。";
	delete $asakuno{asakuno};
	while( my ($key, $value) = each %asakuno ) {
		say "$key -> $value";
		# 出力結果：
#				asakunotomohiro -> 朝来野智博
#				tomohiro -> 4873118247
	}
	say "以下、並べ替え(並び替えてくれず、入れ替わる)。";
	foreach ( sort {$a <=> $b} keys %asakuno) {
		say "$_ -> $asakuno{$_}";
#				tomohiro -> 4873118247
#				asakunotomohiro -> 朝来野智博
	}

	say "-" x 30;
	say "$asakuno{'asakuno'}";	# 空文字列
	say "-" x 30;
	$asakuno{'tomohiro'} = undef;
	while( my ($key, $value) = each %asakuno ) {
		say "$key -> $value";
		# 出力結果：
#				asakunotomohiro -> 朝来野智博
#				tomohiro -> 
	}

	say "以下、削除実施(複数なので配列)。";
	delete @asakuno{qw(asakunotomohiro tomohiro)};
	foreach ( sort {$a <=> $b} keys %asakuno) {
		say "$_ -> $asakuno{$_}";
		# 出力結果：
#				空文字列(undef)
	}
}
&associativearray();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
