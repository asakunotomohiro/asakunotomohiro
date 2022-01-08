package perlStudyDirectoryInputOutput;
$VERSION = "0.002";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル名読み込み(裸のワード)。";

sub asakunoInputOutput() {
	my $currentDir = getcwd();
	opendir DIR, $currentDir || die "ディレクトリオープン失敗($!)。";
	say DIR;	# この行がなかったことになっている。
	foreach my $filename (readdir DIR) {
		say $filename;
#				.
#				..
#				基礎知識用の勉強
#				version.pl
#				.DS_Store
#				.README.md.swp
#				README.md
#				応用知識用の勉強
#				helloWorld.pl
#				環境構築(インストール).md
#				Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける
	}

	closedir DIR;	# なくてもいい。
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
