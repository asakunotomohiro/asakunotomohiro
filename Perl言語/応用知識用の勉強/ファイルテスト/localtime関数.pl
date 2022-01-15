package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ローカルタイム関数利用";

sub asakuno() {
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks);
		# ファイルのstat(プロパティ)情報。
	my $myname = basename($0, '');	# 自身のファイル名取得。
	my %dayweek = (
				0=>'日曜日',	# Sunday
				1=>'月曜日',	# Monday
				2=>'火曜日',	# Tuesday
				3=>'水曜日',	# Wednesday
				4=>'木曜日',	# Thursday
				5=>'金曜日',	# Friday
				6=>'土曜日',	# Saturday
				);

	($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
	$size, $atime, $mtime, $ctime, $blksize, $blocks)
			= stat($0);	# ファイルのstat(プロパティ)情報。
	say "以下、'$myname'ファイル情報。";
	say "\t最終アクセス時刻：$atime";
	say "\t最終更新時刻：$mtime";
	say "\t最後のinode変更時刻：$ctime";
	say "ctimeがファイルの作成日時？";

	say "上記はエポック経過秒数になるため、以下、年月日に変換する。";
	my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime $atime;
	$mon += 1;	# 1月が0になるため、1プラスが必要。
	$year += 1900;	# 1900年からの年数になるため、それを加算することで、西暦になる。
	$wday = $dayweek{$wday};	# 日曜日が0から始まるため、変換。
	$yday += 1;	# 1月1日が0始まりのため、1プラスが必要。
	say "\tatime(最終アクセス時刻)：$year年$mon月$yday日($wday) $hour時$min分$sec秒";
	my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime $mtime;
	$mon += 1;
	$year += 1900;
	$wday = $dayweek{$wday};
	$yday += 1;
	say "\tmtime(最終更新時刻)：$year年$mon月$yday日($wday) $hour時$min分$sec秒";
	my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime $ctime;
	$mon += 1;
	$year += 1900;
	$wday = $dayweek{$wday};
	$yday += 1;
	say "\tctime(最後のinode変更時刻)：$year年$mon月$yday日($wday) $hour時$min分$sec秒";

	say 'time：' . time;	# time：1642224565
	say "現在の時刻を世界時で表す(" . gmtime . ")。";
			# 現在の時刻を世界時で表す(Sat Jan 15 05:27:44 2022)。
	say gmtime;	# 163051501226140
	say 'localtime：' . localtime;
			# localtime：Sat Jan 15 14:29:50 2022
}
&asakuno(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
