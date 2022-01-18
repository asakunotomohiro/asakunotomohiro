package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "stat関数利用";

sub asakuno() {
	my $myname = $0;	# 自身のファイル名取得。

	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($myname);	# ファイルのstat情報。;

	say "以下、ファイルのstat情報。";
	say "\tファイルのデバイス番号：$dev";
	say "\tiノード番号：$ino";
	say "\tファイルの権限ビットとそれ以外の数ビットを合わせたもの(ls -lで取得されるもの)：$mode";
	say "\tファイルまたはディレクトリに対するハードリンクの個数：$nlink";
	say "\tファイルの所有者を表すユーザID：$uid";
	say "\tファイルの所有者を表すグループID：$gid";
	say "\t：$rdev";
	say "\tファイルの容量をバイト単位で表す(ファイルテスト-sと同じ)：$size";
	say "\t最終アクセス時刻：" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻：" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻：" . &timeformatChange(localtime $ctime);
	say "\t：$blksize";
	say "\t：$blocks";

}
&asakuno(@ARGV);
# 以下、出力結果。
#			以下、ファイルのstat情報。
#				ファイルのデバイス番号：16777220
#				iノード番号：67541036
#				ファイルの権限ビットとそれ以外の数ビットを合わせたもの(ls -lで取得されるもの)：33261
#				ファイルまたはディレクトリに対するハードリンクの個数：1
#				ファイルの所有者を表すユーザID：501
#				ファイルの所有者を表すグループID：20
#				：0
#				ファイルの容量をバイト単位で表す(ファイルテスト-sと同じ)：2272
#				最終アクセス時刻：2022年1月18日(火) 11時39分38秒
#				最終更新時刻：2022年1月18日(火) 11時33分42秒
#				最後のinode変更時刻：2022年1月18日(火) 11時39分17秒
#				：4096
#				：8


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
