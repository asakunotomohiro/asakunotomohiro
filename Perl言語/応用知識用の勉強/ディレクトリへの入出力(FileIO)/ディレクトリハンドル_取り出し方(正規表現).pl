package perlStudyDirectoryInputOutput;
$VERSION = "0.002";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル名読み込み(正規表現との組み合わせ)。";

sub asakunoInputOutput() {
	my $currentDir = getcwd();
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
#		next if $filename eq '.' or $filename eq '..';
		next if $filename =~ /^[.]/;	# 先頭がピリオドで始まる場合、先頭処理に戻る。
		#say $filename;
#			基礎知識用の勉強
#			version.pl
#			README.md
#			応用知識用の勉強
#			helloWorld.pl
#			環境構築(インストール).md
#			Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける
	}
	seekdir $dh, 0;	# 何も働いてくれない(どうやって先頭に戻せば良い？)。
	while (my $filename = readdir $dh) {
		next unless $filename =~ /\.pl\z/;
		say $filename;
#			version.pl
#			helloWorld.pl
	}

	closedir $dh;	# なくてもいい。
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
