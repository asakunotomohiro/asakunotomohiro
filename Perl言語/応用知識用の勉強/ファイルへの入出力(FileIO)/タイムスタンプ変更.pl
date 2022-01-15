package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "タイムスタンプ変更";

sub asakunoInputOutput() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される。
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks);
		# ファイルのstat(プロパティ)情報。

	if( -d $asakuno[0] ) {
		warn "同名の$asakuno[0]ディレクトリが存在する。";
	}
	mkdir $asakuno[0], oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	my $dirunderFile = "$currentDir/$asakuno[0]/$asakuno[2]";
	if( -d $asakuno[0] ) {
		say "$asakuno[0]ディレクトリに、$asakuno[2]ファイルを作成する。";

		open my $file_fh, '>', $dirunderFile
			or die "$dirunderFileのファイルオープン失敗($!)";
		foreach( @asakuno ) {
			say $file_fh $_;
		}
		close $file_fh;

		say "以下、ファイルのオーナ情報取得。";
		($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
		$size, $atime, $mtime, $ctime, $blksize, $blocks)
			= stat($dirunderFile);	# ファイルのstat(プロパティ)情報。
		say "\tアクセス時刻：$atime";
		say "\t修正時刻：$mtime";
		say "\t作成時刻：$ctime";

		say "以下、ファイルの時刻を書き換える。";
		#chown $useid, $groupid, $dirunderFile;	# 変わらず・・・なぜ？
		say "\t書き換え後のアクセス時刻予想：";
		say "\t書き換え後の修正時刻予想：";
		say "\t書き換え後の作成時刻予想：";

		say "以下、ファイルのオーナ情報取得。";
		($dev, $ino, $mode, $nlink, $uid, $gid,
		$rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks)
			= stat($dirunderFile);	# ファイルのstat(プロパティ)情報。
		say "\tアクセス時刻：$atime";
		say "\t修正時刻：$mtime";
		say "\t作成時刻：$ctime";
	}

	unlink $dirunderFile or warn "ファイル削除失敗($!)。";
	if( -f $dirunderFile ) {
		say "$asakuno[2]ファイルがある。";
	}
	else {
		say "$asakuno[2]ファイル削除済み。";
		rmdir $asakuno[0] or warn "ディレクトリ削除失敗($!)。";
		unless( -d $asakuno[0] ) {
			say "$asakuno[0]ディレクトリ削除成功。";
		}
	}
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
