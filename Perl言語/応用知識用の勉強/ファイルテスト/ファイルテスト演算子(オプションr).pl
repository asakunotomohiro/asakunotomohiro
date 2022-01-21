package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ローカルタイム関数利用";

sub asakuno() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	my $filename = $currentDir . '/' . $asakuno . 'txt';
	open my $file_fh, '>', $filename
		or die "$filenameのファイルオープン失敗($!)";
	foreach( @asakuno ) {
		say $file_fh $_;
	}
	close $file_fh;

	say "以下、ファイル作成直後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\tファイルの権限などの複雑情報\t\t：\t$mode\t(ls -lで取得されるもの)";
	say "\tファイルの所有者を表すユーザID\t：\t$uid";
	say "\tファイルの所有者を表すグループID\t：\t$gid";
	my $olduid = $uid;
	my $oldgid = $gid;

	if( -r $filename ) {
		say "読み取り可能。";
	}

	defined(my $useid = getpwnam 'root') or die 'ユーザ名からID取得失敗。';
	defined(my $groupid = getgrnam 'root') or die 'ユーザグループ名からID取得失敗。';
	chown $useid, $groupid, $filename;

	say "以下、ファイルのlstat取得。";
	($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
	$size, $atime, $mtime, $ctime, $blksize, $blocks)
		= lstat($filename);	# ファイルのlstat情報。
	say "\tファイルの権限などの複雑情報\t\t：\t$mode\t(ls -lで取得されるもの)";
	say "\tファイルの所有者を表すユーザID\t：\t$uid";
	say "\tファイルの所有者を表すグループID\t：\t$gid";

	if( -r $filename ) {
		say "読み取り可能。";
	}

	chown $olduid, $oldgid, $filename;
	unlink $filename or warn "ファイル削除失敗($!)。";
}
&asakuno(@ARGV);

sub timeformatChange {
	# この関数をどこからでも呼び出せるようにしたい。
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
