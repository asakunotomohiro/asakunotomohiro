package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル権限変更";

sub asakunoInputOutput() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される。
	my $dirunderFile = $asakuno[0] . '/' . $asakuno[1];

	if( -d $asakuno[0] ) {
		warn "同名の$asakuno[0]ディレクトリが存在する。";
	}
	mkdir $asakuno[0], oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	if( -d $asakuno[0] ) {
		say "$asakuno[0]ディレクトリに、$asakuno[1]ファイルを作成する。";

		open my $file_fh, '>', $dirunderFile
			or die "$dirunderFileのファイルオープン失敗($!)";
		foreach( @asakuno ) {
			say $file_fh $_;
		}
		close $file_fh;

		say "以下、直下ディレクトリの権限を書き換え不可に変更する。";
		chmod 0555, $asakuno[0] or warn "$asakuno[0]ディレクトリの権限変更失敗($!)。";

		say "以下、ファイル内容読み込み。";
		open my $file_fh, '<', $dirunderFile
			or die "$dirunderFileのファイルオープン失敗($!)";
		foreach( <$file_fh> ) {
			print "\t$_";
		}
		close $file_fh;
	}
	say "以下、作成ディレクトリ配下のファイルを削除。";
	unlink $dirunderFile or warn "ファイル削除失敗($!)。";
						# ファイル削除失敗(Not a directory)。 at 権限変更.pl line 42.
	if( -f $dirunderFile ) {
		say "$dirunderFileファイル削除失敗。";
	}
	else {
		say "$dirunderFileファイル削除済み。";
	}
	say "以下、直下ディレクトリの権限に755を付与する。";
	chmod oct($permissions), $asakuno[0] or warn "$asakuno[0]ディレクトリの権限変更失敗($!)。";
	unlink $dirunderFile or warn "ファイル削除失敗($!)。";
	if( -f $dirunderFile ) {
		say "$dirunderFileファイルがある。";
	}
	else {
		say "$dirunderFileファイル削除済み。";
		rmdir $asakuno[0] or warn "ディレクトリ削除失敗($!)。";
		unless( -d $asakuno[0] ) {
			say "$asakuno[0]ディレクトリ削除成功。";
		}
	}
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
