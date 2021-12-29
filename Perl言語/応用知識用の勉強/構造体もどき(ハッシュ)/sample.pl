package perlStudyTypedef;
$VERSION = "0.001";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "ハッシュを用いた構造体もどき";

sub asakunoHashTypedef() {
	my %asakuno;	# ハッシュ宣言(空の丸括弧を代入する必要すら無い？)

	say "構造体から1を取得：" . $asakuno{1};	# 当たり前だが、何も値を設定していないのだから空文字列が出力される。
	$asakuno{1} = 1;	# 1のキーに1の値を代入する。
	say "構造体から1を取得：" . $asakuno{1};	# 1が出力される。

	say "-" x 30;
	say "構造体からkeyを取得：" . $asakuno{key};	# 当たり前だが、何も値を設定していないのだから空文字列が出力される。
	$asakuno{key} = "key";	# 値の設定
	say "構造体からkeyを取得：" . $asakuno{key};	# keyが出力される。

	say "-" x 30;
	say "構造体からvalueを取得：" . $asakuno{value};	# 当たり前だが、何も値を設定していないのだから空文字列が出力される。
	$asakuno{value} = "朝来野";	# 値の設定
	say "構造体からvalueを取得：" . $asakuno{value};	# 朝来野が出力される。

	say "-" x 30;
	# my $tomohiro{asakuno} = "智博";
	# say "tomohiro構造体：" . $tomohiro{asakuno};
	# エラーになった。
	#	syntax error at sample.pl line 28, near "$tomohiro{asakuno"
	#	Global symbol "%tomohiro" requires explicit package name (did you forget to declare "my %tomohiro"?) at sample.pl line 29.
	#	syntax error at sample.pl line 30, near "}"
	#	Execution of sample.pl aborted due to compilation errors.

	say "-" x 30;
	say "以下、無名ハッシュリファレンス";
	my $tomohiro = {
				1=>1,
				key=>'key',
				value=>'智博',
			};
	say $$tomohiro{1};		# 1
	say $$tomohiro{value};	# 智博
	say $tomohiro->{key};	# key
	say $tomohiro->{value};	# 智博
}
&asakunoHashTypedef();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
