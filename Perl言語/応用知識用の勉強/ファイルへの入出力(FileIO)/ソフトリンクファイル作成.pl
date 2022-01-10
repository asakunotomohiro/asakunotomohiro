package perlStudyDirectoryInputOutput;
$VERSION = "0.002";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "シンボリックリンクファイル作成";

sub asakunoInputOutput() {
	my $asakuno = "ソフトリンクファイル.txt";	# 変更前のファイル名。
	say "ファイル($asakuno)作成実施。";
	die "書き込み失敗($!)。" unless open my $file_fh, '>>', $asakuno;
	say $file_fh $asakuno;	# 書き込み。
	close $file_fh;	# ファイルハンドル切り替えをしていない場合、わざわざ閉じる必要がある。

	my $tomohiro = 'シンボリックファイル.c';
	#	既存のソフトリンクファイルがある場合、作成に失敗する。
	symlink $asakuno, $tomohiro or warn "ソフトリンクファイル作成失敗($!)。";
	#	ソフトリンクファイル作成失敗(File exists)。 at ソフトリンクファイル作成.pl line 20.

	die "$tomohiroファイルに書き込み失敗($!)。" unless open my $file_fh, '>>', $tomohiro;
	say $file_fh "リンクファイルに書き込み。";
	close $file_fh;	# わざわざ閉じる必要がある。

	die "$asakunoファイルに書き込み失敗($!)。" unless open my $file_fh, '>>', $asakuno;
	say $file_fh "大本のファイルに書き込み。";
	close $file_fh;	# わざわざ閉じる必要がある。

	say "以下、$tomohiroファイル内容の出力。";
	die "$tomohiroファイルから読み込み失敗($!)。" unless open my $file_fh, '<', $tomohiro;
	while( <$file_fh> ) {
		chomp;
		say "\t$_";
	}
	#close $file_fh;	# わざわざ閉じる必要あるのか？読み込みは不要？
	say "以下、$asakunoファイル内容の出力。";
	die "$asakunoファイルから読み込み失敗($!)。" unless open my $file_fh, '<', $asakuno;
	while( <$file_fh> ) {
		chomp;
		say "\t$_";
	}
	close $file_fh;

	# 削除する順番は順不同で構わないようだ。
	unlink $tomohiro or warn "$tomohiroファイル削除失敗($!)。";
	unlink $asakuno or warn "$asakunoファイル削除失敗($!)。";
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
