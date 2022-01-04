package perlStudyInputOutput;
$VERSION = "0.099";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "特殊変数について($0)。";
# 出力結果：特殊変数について(special特殊変数.pl)。

sub asakunoInputOutput() {
	my $filename = shift;
	#$/ = undef;
	open my $file_fh, '<', $filename or die "$filenameのファイルオープン失敗($!)";
	say "@ARGV";	# ここでの引数名は出力される。
	while( <$file_fh> ) {
		chomp;
		#	以下、$.がファイル読み込みの現在行を示す。
		print "$ARGVファイルの$.行目->内容：$_";	# $ARGVが出力されない(<ARGV>限定か？)。
		#	$/に未設定を設定した場合、改行されずに出力されるのだが、ここで宣言した場合、宣言後から有効になるようだ。
		#$/ = undef;
		#	以下、出力時の区切り文字。
		$\ = "\n";	# 改行を設定したことで、print関数の末尾が自動的に改行されるようになった。
	}

	say "\n" . "-" x 30;
	say "以下、出力時の区切り文字(,記号での区切りを変更できると言うことだろう)。";
	#$, = "--->";
	#say 'asakuno', 'tomohiro', '朝来野智博';	# asakuno--->tomohiro--->朝来野智
	say "-" x 30;
	say	"以下、リストの区切り文字。";
	$" = "--->";
	say "@asakuno";				# 朝来野--->智博
	say @asakuno;				# 朝来野智博
	say (20220104, 20220105);	# 2022010420220105
	say "(20220104, 20220105)";	# (20220104, 20220105)
	say "-" x 30;
#	say "以下、オートスプリット配列(利用前)。";
#	my $tomohiro = "asakuno tomohiro 朝来野 智博";
#	my @tomohiro = split(/ /, $tomohiro);
#	foreach my $value ( @tomohiro ) {
#		say $value;
#		#say @F;	err
#	}
## 以下、出力結果。
##			asakuno
##			tomohiro
##			朝来野
##			智博
#	say "以下、オートスプリット配列(利用後)。";
#	use v5.10;
#	my $tomohiro = "asakuno tomohiro 朝来野 智博";
#	my @tomohiro = split(/ /, $tomohiro);
#	foreach my $value ( @tomohiro ) {
#		@F = split ' ', $value;
#		say pop(@F);
#	}
#	use v5.24;
#	say "-" x 30;
	say "以下、オートスプリット配列(利用前)。";
	open $_, '<', $filename or die "$filenameのファイルオープン失敗($!)";
	while( <> ) {
#		@F = split(' ');
#		say pop(@F);
		say;
	}
	say "以下、オートスプリット配列(利用後)。";
	use v5.10;
#	open my $file_fh, '<', $filename or die "$filenameのファイルオープン失敗($!)";
#	while( <$file_fh> ) {
#		@F = split(' ', $file_fh);
#		say pop(@F);
#	}
#	open $_, '<', $filename or die "$filenameのファイルオープン失敗($!)";
#	while( <> ) {
#		@F = split(' ', $_);
#		say pop(@F);
#	}
	say "オートスプリット配列とは、ユーザ入力から復唱的な？";
	use v5.24;

	say "以下、DATAファイルハンドル。";
	while( <DATA> ) {
		print;
	}
}
&asakunoInputOutput(@ARGV);


print "以上", "(@asakuno)。";
		# 上記の$/は効果が無い(そう見えるだけか？)。
		# しかし、$\は効果があった。
		# そして、$,も効果がここまで持続している。
		# そして、$"も効果がここまで持続している。
print "特殊変数についてのプログラム終了。"

__DATA__
__END__
hoge
bar
boo
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
