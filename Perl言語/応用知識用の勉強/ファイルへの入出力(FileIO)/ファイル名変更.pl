package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル名変更";

sub asakunoInputOutput() {
	#rename 'asakuno.txt', 'tomohiro.md';	# 名前が変わった(単純変更)。
#			$ ll
#			total 16
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 asakuno.txt*
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 ファイル名変更.pl*
#			$ perl ファイル名変更.pl
#			ファイル名変更
#			以上。
#			$ ll
#			total 16
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 tomohiro.md*
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 ファイル名変更.pl*
#			$

	#rename 'tomohiro.md', 'asakunotomohiro/tomohiro.md';	# ファイル移動。
#			$ ll -R
#			total 16
#			-rwxr-xr-x  1 asakunotomohiro  staff  1065  1  9 11:46 ファイル名変更.pl*
#			drwxr-xr-x  2 asakunotomohiro  staff    64  1  9 11:45 asakunotomohiro/	←☆ここに移動する。
#			-rwxr-xr-x  1 asakunotomohiro  staff   570  1  9 11:42 tomohiro.md*	←☆これを移動する。
#			
#			./asakunotomohiro:	←☆移動前なので空っぽ。
#			$ perl ファイル名変更.pl	←☆移動実施。
#			ファイル名変更
#			以上。
#			$ ll -R
#			total 8
#			drwxr-xr-x  3 asakunotomohiro  staff    96  1  9 11:47 asakunotomohiro/
#			-rwxr-xr-x  1 asakunotomohiro  staff  1065  1  9 11:46 ファイル名変更.pl*
#			
#			./asakunotomohiro:	←☆ファイルが移動され、ここに移った。
#			total 8
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 tomohiro.md*
#			$

	rename 'tomohiro.md', 'asakunotomohiro/asakuno.md';	# ファイル移動後に名前を変える。
#			$ ll -R
#			total 16
#			-rwxr-xr-x  1 asakunotomohiro  staff  2049  1  9 11:58 ファイル名変更.pl*
#			drwxr-xr-x  3 asakunotomohiro  staff    96  1  9 11:57 asakunotomohiro/	←☆ここに移動後、名前を変える。
#			-rwxr-xr-x  1 asakunotomohiro  staff   570  1  9 11:42 tomohiro.md*	←☆このファイルを操作する。
#			
#			./asakunotomohiro:	←☆移動前なので空っぽ。
#			$ perl ファイル名変更.pl	←☆作業実施。
#			ファイル名変更
#			以上。
#			$ ll -R
#			total 8
#			drwxr-xr-x  4 asakunotomohiro  staff   128  1  9 11:59 asakunotomohiro/
#			-rwxr-xr-x  1 asakunotomohiro  staff  2049  1  9 11:58 ファイル名変更.pl*
#			
#			./asakunotomohiro:	←☆移動が確認できる。
#			total 8
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 asakuno.md*	←☆ファイル名が変わっている。
#			$
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
