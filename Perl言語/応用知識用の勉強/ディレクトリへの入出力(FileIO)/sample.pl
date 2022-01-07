package perlStudyDirectoryInputOutput;
$VERSION = "0.001";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "ディレクトリへの入出力サンプル";

sub asakunoInputOutput() {
	say "以下、カレントディレクトリ。";
	say getcwd();
		# /Users/asakunotomohiro/study勉強用Githubリポジトリ/Perl言語
}
&asakunoInputOutput();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
