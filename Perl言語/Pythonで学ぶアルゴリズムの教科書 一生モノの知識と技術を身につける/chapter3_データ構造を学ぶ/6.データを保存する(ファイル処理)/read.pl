use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル読み込み。";

sub asakuno() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ファイル名のみ定義。
	my $filename = $currentDir . '/' . $asakuno . '.txt';

	if( -f $filename ) {
		say "ファイルあり。";
	}

	say "ファイルを読み込む。";
	open my $file_fh, '<', $filename
		or die "$filenameのファイルオープン失敗($!)";
	while( <$file_fh> ) {
		chomp;	# 改行削除。
		say;	# ファイル内容を標準出力先に出力。
	}
	close $file_fh;

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	if( -f $filename ) {
		say "ファイルあり。";
	}
	else{
		say "ファイルなし(削除済み)。";
	}
}
&asakuno(@ARGV);
#			ファイルあり。
#			ファイルを読み込む。
#			朝来野
#			智博
#			朝来野智博
#			ファイル削除。
#			ファイルあり。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
