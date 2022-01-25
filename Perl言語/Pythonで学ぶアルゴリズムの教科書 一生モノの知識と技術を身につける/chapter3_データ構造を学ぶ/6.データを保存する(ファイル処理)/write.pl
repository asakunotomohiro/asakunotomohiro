use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル書き込み。";

sub asakuno() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ファイル名のみ定義。
	my $filename = $currentDir . '/' . $asakuno . '.txt';

	unless( -f $filename ) {
		say "ファイル作成前。";
	}

	say "ファイルを新規作成(既存上書き)する。";
	open my $file_fh, '>', $filename
		or die "$filenameのファイルオープン失敗($!)";
	foreach( @asakuno ) {
		say $file_fh $_;	# ファイルへの書き込み。
	}
	close $file_fh;

	if( -f $filename ) {
		say "ファイルあり。";
	}
	else{
		say "ファイルなし。";
	}

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
#			ファイル作成前。
#			ファイルを新規作成(既存上書き)する。
#			ファイルあり。
#			ファイル削除。
#			ファイルなし(削除済み)。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
