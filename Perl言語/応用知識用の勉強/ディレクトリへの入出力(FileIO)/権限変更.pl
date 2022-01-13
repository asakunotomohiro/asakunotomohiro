package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ディレクトリ権限変更";

sub asakunoInputOutput() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される。
	my $dirasakuno = "サブディレクトリ";

	unless( -d $asakuno ) {
		say "$asakunoディレクトリがない。";
	}
	mkdir $asakuno[0], oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	if( -d $asakuno[0] ) {
		say "$asakuno[0]ディレクトリがある。";
		$dirasakuno = $asakuno[0] . '/' . $asakuno[1];
		say "以下、作成ディレクトリ配下に、さらにディレクトリを作成する。";
		mkdir $dirasakuno, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
		say "以下、直下ディレクトリの権限を書き換え不可に変更する。";
		chmod 0555, $asakuno[0] or warn "$asakuno[0]ディレクトリの権限変更失敗($!)。";
	}
	say "以下、作成ディレクトリ配下のディレクトリを削除。";
	rmdir $dirasakuno or warn "ディレクトリ削除失敗($!)。";
						# ディレクトリ削除失敗(Permission denied)。 at 権限変更.pl line 29.
	if( -d $dirasakuno ) {
		say "$dirasakunoディレクトリ削除失敗。";
	}
	else {
		say "$dirasakunoディレクトリ削除済み。";
	}
	say "以下、直下ディレクトリの権限に755を付与する。";
	chmod oct($permissions), $asakuno[0] or warn "$asakunoディレクトリの権限変更失敗($!)。";
	rmdir $dirasakuno or warn "ディレクトリ削除失敗($!)。";
	if( -d $dirasakuno ) {
		say "$dirasakunoディレクトリがある。";
	}
	else {
		say "$dirasakunoディレクトリ削除済み。";
		rmdir $asakuno[0] or warn "ディレクトリ削除失敗($!)。";
		unless( -d $asakuno[0] ) {
			say "$asakuno[0]ディレクトリ削除成功。";
		}
	}
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
