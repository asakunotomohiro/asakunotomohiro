use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "配列リファレンス";

sub arrayReference() {
	my $one = shift @_;
	my $two = shift;	# 配列のアドレスを取得している。
	my @three = shift;

	say "-" x 30;
	say $one;	# 朝来野智博
	say "-" x 30;
	# 以下、リファレンスとして配列のアドレスが代入されている。
	say $two;	# ARRAY(0x7fec4601c188)	←☆このアドレスは毎回変わる。
	# 以下、デリファレンス
	say "配列リファレンスの1つ目の要素内容：" . @$two[0];	# 配列リファレンスの1つ目の要素内容：朝来野
	say "配列リファレンスの2つ目の要素内容：" . @$two[1];	# 配列リファレンスの2つ目の要素内容：智博
	# 以下存在しない三つ目の要素を確認する。
	say "配列リファレンスの3つ目の要素内容：" . @$two[2];	# 配列リファレンスの3つ目の要素内容：
	# 以下、配列内容全て。
	say "配列内容：@{$two}";	# 配列内容：朝来野 智博
	say "配列内容：@$two";		# 配列内容：朝来野 智博
	say "-" x 30;
	say "@three";	# 空文字列
	say "-" x 30;
}
&arrayReference($asakuno, \@asakuno);

say "以下、見やすさを犠牲にして、ステップ数を短くする";

sub arrayReferenceLook() {
	# 使い物にならない関数を作ってしまった。
	say "-" x 30;
	say shift;	# 朝来野智博
	say "-" x 30;
	say shift;	# ARRAY(0x7ff32780a388)
	say "-" x 30;
	say shift;	# 空文字列
	say "-" x 30;
}
&arrayReferenceLook($asakuno, \@asakuno);

say "-" x 30;
say "以下、見づらさの改良";
sub arrayReferenceLookKai() {
	for my $value ( @_ ) {
		say "$value";
	}
	# 出力結果：
#				朝来野智博
#				ARRAY(0x7f97d3009988)
}
&arrayReferenceLookKai($asakuno, \@asakuno);

say "-" x 30;
say "以下、見づらさの再改良";
sub arrayReferenceLookKaiKai() {
	# 以下、第2引数の配列リファレンスから要素を抜き出している。
	# for my $value ( @@_[1] ) {	# Bareword found where operator expected at 配列のリファレンス.pl line 62, near "@@_"
	# for my $value ( ${@_[1]} ) {	# Not a SCALAR reference at 配列のリファレンス.pl line 63.
	# for my $value ( ${$_[1]} ) {	# Not a SCALAR reference at 配列のリファレンス.pl line 64.
	# for my $value ( ${$_}[1] ) {	# エラーにはならないが、中身を取り出せなかった。
	for my $value ( @{@_[1]} ) {
		say "$value";
	}
	# 出力結果：
#				朝来野
#				智博
}
&arrayReferenceLookKaiKai($asakuno, \@asakuno);
say "-" x 30;


say "以下、見やすさを得ながら配列内容を書き換える。";
sub arrayReferenceEdit() {
	my $one = shift @_;
	my $two = shift;	# 配列のアドレスを取得している。

	say $one;	# 朝来野智博
	# 以下、リファレンスとして配列のアドレスが代入されている。
	say $two;	# ARRAY(0x7fec4601c188)
	# 以下、デリファレンスしながら値の書き換え。
	for my $value ( @$two ) {
		say "$valueを書き換える。";
		$value = "書き換え：" . $value . "を書き換える";
	}
}
&arrayReferenceEdit($asakuno, \@asakuno);

say $asakuno[0];	# 書き換え：朝来野を書き換える
say $asakuno[1];	# 書き換え：智博を書き換える
say "-" x 30;

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
