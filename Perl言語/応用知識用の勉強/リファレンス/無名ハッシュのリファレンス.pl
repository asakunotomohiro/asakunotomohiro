use v5.24;

our $asakuno = "朝来野智博";
our @asakuno = ("朝来野", "智博");
#our %asakuno = (20211216=>"朝来野", 20211217=>"智博");

say "以下、ハッシュ-リファレンス";

sub hashReference() {
	my $refScalar = shift;	# 変数のアドレスを取得している。
	my $refArray  = shift;	# 配列のアドレスを取得している。
#	my $refHash   = shift;	# ハッシュのアドレスを取得している。

	# 以下、無名ハッシュリファレンス。
	our $asakunoRef = {20211217=>"朝来野", 20211218=>"智博"};

	say "-" x 5 . " 以下、ハッシュリファレンス " . "-" x 30;
	say "%$asakunoRef";		# %HASH(0x7fb8f6801ba0)
	say %$asakunoRef;		# 20211218智博20211217朝来野
	say "-" x 10;
	say "$$asakunoRef{20211217}";	# 朝来野
	say "$$asakunoRef{20211218}";	# 智博
	say "-" x 10;
	say "$asakunoRef->{20211217}";	# 朝来野
	say "$asakunoRef->{20211218}";	# 智博
	say "-" x 10;
	my @tomohiro = sort keys %$asakunoRef;
	say "@tomohiro";	# 20211217 20211218
	foreach my $value (@tomohiro) {
		say "$$asakunoRef{$value}";
#				朝来野
#				智博
	}
	foreach my $value (@tomohiro) {
		say "$asakunoRef->{$value}";
#				朝来野
#				智博
	}
	say "-" x 30;
}
&hashReference(\$asakuno, \@asakuno);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
