package perlStudyDirectoryInputOutput;
$VERSION = "0.002";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ディレクトリ作成及び削除。";

sub asakunoInputOutput() {
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(0755=>01363)。
	unless( -d $asakuno ) {
		say "$asakunoディレクトリがない。";
	}
	mkdir $asakuno, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	if( -d $asakuno ) {
		say "$asakunoディレクトリがある。";
	}
	rmdir $asakuno or warn "ディレクトリ削除失敗($!)。";
	if( -d $asakuno ) {
		say "$asakunoディレクトリがある。";
	}
	else {
		say "$asakunoディレクトリ削除済み。";
	}

	say "以下、ディレクトリを再作成し、その配下にテキストファイルも作成した。";
	mkdir $asakuno, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	open my $file_fh, '>>', $asakuno . '/' . $asakuno . '.txt'
		or die "${asakuno}.txtのファイルオープン失敗($!)";
	foreach my $value ( @asakuno ) {
		say $file_fh $value;
	}
	close $file_fh;
	open my $file_fh, '<', $asakuno . '/' . $asakuno . '.txt'
		or die "${asakuno}.txtのファイルオープン失敗($!)";
	say "以下、書き込んだファイル内容。";
	while ( <$file_fh> ) {
		chomp;
		say "\t$_";
	}
	close $file_fh;

	say "以下、ディレクトリを削除する。";
	rmdir $asakuno or warn "ディレクトリ削除失敗($!)。";
	if( -d $asakuno ) {
		say "$asakunoディレクトリがある。";
	}
	else {
		say "$asakunoディレクトリ削除済み。";
	}
	say "以下、配下のファイルを削除する。";
	unlink $asakuno . '/' . $asakuno . '.txt';
	say "以下、再度ディレクトリを削除する。";
	rmdir $asakuno or warn "ディレクトリ削除失敗($!)。";
	if( -d $asakuno ) {
		say "$asakunoディレクトリがある。";
	}
	else {
		say "$asakunoディレクトリ削除済み。";
	}

	say "関数内処理終了。"
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
