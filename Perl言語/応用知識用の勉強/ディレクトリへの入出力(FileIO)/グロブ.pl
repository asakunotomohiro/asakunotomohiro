package perlStudyDirectoryInputOutput;
$VERSION = "0.001";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "ディレクトリへの入出力サンプル";
my $currentDir;

sub asakunoInputOutput() {
	say "以下、カレントディレクトリ。";
	$currentDir = getcwd();
	say $currentDir;
		# /Users/asakunotomohiro/study勉強用Githubリポジトリ/Perl言語

	my @plfile = glob '*.pl';
	say "@plfile";	# helloWorld.pl version.pl

	@plfile = glob '*.pl *.md';
	say "@plfile";	# helloWorld.pl version.pl 環境構築(インストール).md README.md

	@plfile = glob '*';
	say "@plfile";	# 基礎知識用の勉強 応用知識用の勉強 環境構築(インストール).md helloWorld.pl Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける README.md version.pl

	@plfile = glob '.*';
	say "@plfile";	# . .. .DS_Store .README.md.swp
}
&asakunoInputOutput();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
