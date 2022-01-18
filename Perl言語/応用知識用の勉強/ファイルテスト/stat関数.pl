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
	say "\tファイルのデバイス番号：\t\t\t\t\t\t\t\t$dev";
	say "\tファイルのiノード番号：\t\t\t\t\t\t\t\t\t$ino";
	say "\tファイルの権限ビットとそれ以外の数ビットを合わせたもの：$mode\t(ls -lで取得されるもの)";
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";
	say "\tファイルの所有者を表すユーザID：\t\t\t\t\t\t$uid";
	say "\tファイルの所有者を表すグループID：\t\t\t\t\t\t$gid";
	say "\tデバイス識別子(特殊ファイルのみ)：\t\t\t\t\t\t$rdev";
	say "\tファイルの容量をバイト単位で表す：\t\t\t\t\t\t$size\t(ファイルテスト-sと同じ)";
	say "\t最終アクセス時刻：\t\t\t\t\t\t\t\t\t\t" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻：\t\t\t\t\t\t\t\t\t\t\t" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻：\t\t\t\t\t\t\t\t\t" . &timeformatChange(localtime $ctime);
	say "\tファイルシステムI/Oでのブロックサイズ：\t\t\t\t\t$blksize";
	say "\t割り当てられたブロック数：\t\t\t\t\t\t\t\t$blocks";

}
&asakuno(@ARGV);
# 以下、出力結果。
#			以下、ファイルのstat情報。
#				ファイルのデバイス番号：								16777220
#				ファイルのiノード番号：									67543854
#				ファイルの権限ビットとそれ以外の数ビットを合わせたもの：33261	(ls -lで取得されるもの)
#				ファイルまたはディレクトリに対するハードリンクの個数：	1
#				ファイルの所有者を表すユーザID：						501
#				ファイルの所有者を表すグループID：						20
#				デバイス識別子(特殊ファイルのみ)：						0
#				ファイルの容量をバイト単位で表す：						3414	(ファイルテスト-sと同じ)
#				最終アクセス時刻：										2022年1月18日(火) 11時56分33秒
#				最終更新時刻：											2022年1月18日(火) 11時56分32秒
#				最後のinode変更時刻：									2022年1月18日(火) 11時56分33秒
#				ファイルシステムI/Oでのブロックサイズ：					4096
#				割り当てられたブロック数：								8


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
