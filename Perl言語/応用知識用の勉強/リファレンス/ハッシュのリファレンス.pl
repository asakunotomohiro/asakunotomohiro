use v5.24;

our $asakuno = "朝来野智博";
our @asakuno = ("朝来野", "智博");
our %asakuno = (20211216=>"朝来野", 20211217=>"智博");

say "以下、ハッシュ-リファレンス";

sub hashReference() {
	my $refScalar = shift;	# 変数のアドレスを取得している。
	my $refArray  = shift;	# 配列のアドレスを取得している。
	my $refHash   = shift;	# ハッシュのアドレスを取得している。

	say "-" x 30;
	say $$refScalar;	# 朝来野智博
	say $refArray->[0];	# 朝来野
	say $refArray->[1];	# 智博
	say "-" x 5 . " 以下、ハッシュリファレンス " . "-" x 30;
	say "%$refHash";	# %HASH(0x7f96948058b0)
	say %$refHash;		# 20211217智博20211216朝来野
	say "-" x 10;
	say "$$refHash{20211216}";	# 朝来野
	say "$$refHash{20211217}";	# 智博
	say "-" x 10;
	my @tomohiro = sort keys %$refHash;
	say "@tomohiro";	# 20211216 20211217
	foreach my $value (@tomohiro) {
		say "$$refHash{$value}";
#				朝来野
#				智博
	}
	foreach my $value (@tomohiro) {
		say "$refHash->{$value}";
#				朝来野
#				智博
	}
	say "-" x 30;
}
&hashReference(\$asakuno, \@asakuno, \%asakuno);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
