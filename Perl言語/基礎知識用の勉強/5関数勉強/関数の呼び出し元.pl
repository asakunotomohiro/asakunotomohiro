use v5.24;

my @asakuno = ("朝来野", "智博", );
say "関数の呼び出し元の特定";

sub asakuno {
	say "関数内";

	my ($package, $file, $line) = caller();

	return ($package, $file, $line);
}

my ($retpack, $retFile, $retLine) = asakuno();
say $retpack;	# main	←☆呼び出し元のパッケージ。
say $retFile;	# 関数の呼び出し元.pl	←☆呼び出し元のコードを含んでいるファイルの名前。
say $retLine;	# 15	←☆呼び出し元のファイル内の行。

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
