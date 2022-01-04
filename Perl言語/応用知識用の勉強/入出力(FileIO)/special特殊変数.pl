package perlStudyInputOutput;
$VERSION = "0.099";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "特殊変数について。";

sub asakunoInputOutput() {
	my $filename = shift;
	#$/ = undef;
	open my $file_fh, '<', $filename or die "$filenameのファイルオープン失敗($!)";
	while( <$file_fh> ) {
		chomp;
		#	以下、$.がファイル読み込みの現在行を示す。
		print "現在$.行目->内容：$_";
		#	$/に未設定を設定した場合、改行されずに出力されるのだが、ここで宣言した場合、宣言後から有効になるようだ。
		#$/ = undef;
		#	以下、出力時の区切り文字。
		$\ = "\n";	# 改行を設定したことで、print関数の末尾が自動的に改行されるようになった。
	}
}
&asakunoInputOutput(@ARGV);

print "以上。";	# 上記の$/は効果が無い(そう見えるだけか？)。しかし、$\は効果があった。
print "特殊変数についてのプログラム終了。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
