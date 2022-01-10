package perlStudyDirectoryInputOutput;
$VERSION = "0.002";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ハードリンクファイル作成";

sub asakunoInputOutput() {
	my $hoge = "リンクファイル.txt";	# 変更前のファイル名。
	say "ファイル($hoge)作成実施。";
	# die "書き込み失敗($!)。" unless open FILE, '>>', $hoge;
	#	書き込み失敗(Permission denied)。 at test.pl line 14.
	# die "書き込み失敗$!" unless open FILE, '>>', $hoge;
	#	書き込み失敗Permission denied at test.pl line 16.
	# die "書き込み失敗$!\n" unless open FILE, '>>', $hoge;
	#	書き込み失敗Permission denied
	die "書き込み失敗($!)。" unless open my $file_fh, '>>', $hoge;
	my $filehandle = *STDOUT;	# 待避しておく必要あるのか？
	select $file_fh;	# 下記のフラッシュを有効にするには、ファイルハンドルを切り替える必要がある。
	$| = 1;	# 即座にフラッシュする。
	say $hoge;	# 書き込み。
	select $filehandle;
	#close $file_fh;	# ファイルハンドル切り替えをしていない場合、わざわざ閉じる必要があるようだ。

	#link 'リンクリンク.c', $hoge or warn "ハードリンクファイル作成失敗($!)。";
	#	ハードリンクファイル作成失敗(No such file or directory)。 at test.pl line 29.
	my $cfile = 'リンクリンク.c';
	link $hoge, $cfile or warn "ハードリンクファイル作成失敗($!)。";

	die "$cfileファイルに書き込み失敗($!)。" unless open my $file_fh, '>>', $cfile;
	$| = 1;	# 意味がない結果になる。
	say $file_fh "リンクファイルに書き込み。";
	close $file_fh;	# わざわざ閉じる必要があるようだ。
	die "$hogeファイルに書き込み失敗($!)。" unless open my $file_fh, '>>', $hoge;
	$| = 1;	# 意味がない結果になる。
	say $file_fh "大本のファイルに書き込み。";
	close $file_fh;	# わざわざ閉じる必要があるようだ。

	say "以下、$cfileファイル内容の出力。";
	die "$cfileファイルから読み込み失敗($!)。" unless open my $file_fh, '<', $cfile;
	while( <$file_fh> ) {
		chomp;
		say "\t$_";
	}
	#close $file_fh;	# わざわざ閉じる必要あるのか？読み込みは不要？
	say "以下、$hogeファイル内容の出力。";
	die "$hogeファイルから読み込み失敗($!)。" unless open my $file_fh, '<', $hoge;
	while( <$file_fh> ) {
		chomp;
		say "\t$_";
	}
	close $file_fh;

	# 削除する順番は順不同で構わないようだ。
	#unlink $cfile or warn "$cfileファイル削除失敗($!)。";
	#unlink $hoge or warn "$hogeファイル削除失敗($!)。";
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
