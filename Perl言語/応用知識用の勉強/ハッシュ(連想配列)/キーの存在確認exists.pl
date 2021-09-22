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

	if ( exists $asakuno{"asakuno"} ) {
		say '$asakuno{"asakuno"}が存在する。';
				# 出力結果：$asakuno{"asakuno"}が存在する。
	}
	if ( exists $asakuno{"hoge"} ) {
		say '$asakuno{"hoge"}が存在する。';
				# 出力結果：
				# 出力しない。
	}
}
&associativearray();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
