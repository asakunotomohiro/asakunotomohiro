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

	{
	say "以下、カレントディレクトリを移動後、カレントディレクトリを表示する。";
	chdir '../ひな形/基礎知識用の勉強' || die "ディレクトリ移動失敗($!)。";
	my $dirchenge = getcwd();
	say $dirchenge;
		# /Users/asakunotomohiro/study勉強用Githubリポジトリ/ひな形/基礎知識用の勉強
	}
}
&asakunoInputOutput();
say getcwd();	# /Users/asakunotomohiro/study勉強用Githubリポジトリ/ひな形/基礎知識用の勉強
				# ブロックを抜け出たため、カレントディレクトリが戻ると思ったが、戻らず。

chdir || die "ディレクトリ移動失敗($!)。";	# 引数なしの場合、ホームディレクトリに極力移動しようとする。
say '$ENV{HOME}：' . "<$ENV{HOME}>および、" . '$ENV{LOGDIR}：' . "<$ENV{LOGDIR}>";
				# $ENV{HOME}：</Users/asakunotomohiro>および、$ENV{LOGDIR}：<>
say getcwd();	# /Users/asakunotomohiro

chdir $currentDir || die "ディレクトリ移動失敗($!)。";
say getcwd();	# /Users/asakunotomohiro/study勉強用Githubリポジトリ/Perl言語

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
