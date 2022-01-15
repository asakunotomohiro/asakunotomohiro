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

		say "以下、ファイルのタイムスタンプ取得。";
		($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
		$size, $atime, $mtime, $ctime, $blksize, $blocks)
			= stat($dirunderFile);	# ファイルのstat情報。
		say "\t最終アクセス時刻：$atime";
		say "\t最終更新時刻：$mtime";
		say "\t最後のinode変更時刻：$ctime";
		say "以下、見やすいように書き換える。";
		say "\t最終アクセス時刻：" . &timeformatChange(localtime $atime);
		say "\t最終更新時刻：" . &timeformatChange(localtime $mtime);
		say "\t最後のinode変更時刻：" . &timeformatChange(localtime $ctime);

		say "以下、ファイルの時刻を書き換える。";
		my $now = time - 24 * 60 * 60 * 365;	# 今から1年前の時刻を現在時刻にする。
		my $ago = $now - 24 * 60 * 60;			# さらに1日前を修正時刻にする。
		utime $now, $ago, $dirunderFile;
		say "\t書き換え後の最終アクセス時刻：";
		say "\t書き換え後の最終更新時刻：";
		say "\t書き換え後の最後のinode変更時刻：";

		say "以下、ファイルのタイムスタンプ取得。";
		($dev, $ino, $mode, $nlink, $uid, $gid,
		$rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks)
			= stat($dirunderFile);	# ファイルのstat情報。
		say "\t最終アクセス時刻：" . &timeformatChange(localtime $atime);
		say "\t最終更新時刻：" . &timeformatChange(localtime $mtime);
		say "\t最後のinode変更時刻：" . &timeformatChange(localtime $ctime);
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

sub timeformatChange {
	my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = @_;
	my %dayweek = (
				0=>'日',	# Sunday
				1=>'月',	# Monday
				2=>'火',	# Tuesday
				3=>'水',	# Wednesday
				4=>'木',	# Thursday
				5=>'金',	# Friday
				6=>'土',	# Saturday
				);

	$mon += 1;					# 月が0始まりになるため、1加算する。
	$year += 1900;				# 1900年を加算することで、西暦になる。
	$wday = $dayweek{$wday};	# 日曜日が0始まりになり、それを変換する。
	$yday += 1;					# 1月1日が0始まりのため、1加算する。

	return "$year年$mon月$yday日($wday) $hour時$min分$sec秒";
}

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
