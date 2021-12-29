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
#				tomohiro -> 4873118247
#				asakunotomohiro -> 朝来野智博
#				asakuno -> 20210922
	}
	say "-" x 30;
	say "以下、キー基準の並べ替え。";
#	foreach ( my $key = sort keys %asakuno ) {
#		say "$key -> $asakuno{$key}";
#	foreach ( my @key = sort keys %asakuno ) {
#	foreach ( my ($key) = sort keys %asakuno ) {
#		say "$key -> $asakuno{$key}";
	foreach ( sort keys %asakuno ) {
		say "$_ -> $asakuno{$_}";
		# 出力結果：
#				asakuno -> 20210922
#				asakunotomohiro -> 朝来野智博
#				tomohiro -> 4873118247
	}

	say "以下、別の方法で並べ替え(文字コード順の降順)。";
	foreach ( sort {$b cmp $a} keys %asakuno) {
		say "$_ -> $asakuno{$_}";
	}
#			tomohiro -> 4873118247
#			asakunotomohiro -> 朝来野智博
#			asakuno -> 20210922

	say "以下、ハッシュ値を数字順・昇順で並べ替え。";
	foreach ( sort {$asakuno{$a} <=> $asakuno{$b}} keys %asakuno) {
		say "$_ -> $asakuno{$_}";
	}
#			asakunotomohiro -> 朝来野智博
#			asakuno -> 20210922
#			tomohiro -> 4873118247

	my %asakuno = (
		20210922 => "asakuno",
		4873118247 => "tomohiro",
		"朝来野智博" => "asakunotomohiro",
	);

	say "以下、数字順・降順で並べ替え。";
	foreach ( sort {$b <=> $a} keys %asakuno) {
		say "$_ -> $asakuno{$_}";
	}
#			4873118247 -> tomohiro
#			20210922 -> asakuno
#			朝来野智博 -> asakunotomohiro

	say "以下、数字順・昇順で並べ替え。";
	foreach ( sort {$a <=> $b} keys %asakuno) {
		say "$_ -> $asakuno{$_}";
	}
#			朝来野智博 -> asakunotomohiro
#			20210922 -> asakuno
#			4873118247 -> tomohiro

	say "-" x 30;
	say "以下、値基準の並べ替え。";
	foreach ( sort { $asakuno{$a} <=> $asakuno{$b} } keys %asakuno ) {
		say "$_ -> $asakuno{$_}";
		# 出力結果：
#				asakunotomohiro -> 朝来野智博
#				asakuno -> 20210922
#				tomohiro -> 4873118247
	}

	say;
	say "以下、キーと値を入れ替える。";
	my %onukasa = reverse %asakuno;
	while( my ($key, $value) = each %onukasa ) {
		say "$key -> $value";
		# 出力結果：
#				tomohiro -> 4873118247
#				asakunotomohiro -> 朝来野智博
#				asakuno -> 20210922
	}
	say "-" x 30;
}
&associativearray();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
