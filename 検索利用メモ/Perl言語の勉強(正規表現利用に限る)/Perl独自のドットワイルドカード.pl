package regularexpressionsStudyPerl;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 date.2022/01/29 DATE.2022/01/29 date:hoge date: asakuno );

say "ドット記号(ワイルドカード)。";

sub asakuno() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	my $filename = $currentDir . '/' . $asakuno . '.txt';	# ファイル名定義。

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename
		or die "$filenameのファイルオープン失敗($!)";
	foreach( @asakuno ) {
		say $file_fh $_;	# ファイルへの書き込み。
	}
	close $file_fh;

	say "ファイルを読み込む。";
	open my $file_fh, '<', $filename or die "$filenameのファイルオープン失敗($!)";
	while( defined(my $line = <$file_fh>) ) {
		chomp $line;	# 改行削除。
		say $. . "行目" . "内容：" . $line;	# ファイル内容を標準出力先に出力。
	}

	say "以下、正規表現作業開始。" if seek $file_fh, 0, 0;
	while( defined(my $line = <$file_fh>) ) {
		chomp $line;	# 改行削除。
		if( $line =~ /date./ ) {
			say "内容：" . $line;	# ファイル内容を標準出力先に出力。
		}
	}

	close $file_fh;

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	if( -f $filename ) {
		say "ファイルに書き込みあり。";
	}
	else{
		say "ファイルが空ファイル(削除済み)。";
	}
}
&asakuno(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
