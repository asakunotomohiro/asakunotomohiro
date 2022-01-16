package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ローカルタイム関数利用";

sub asakuno() {
	#my $myname = basename($0, '');	# 自身のファイル名取得。
	my $myname = $0;	# 自身のファイル名取得。
	say "'$myname'ファイルが存在する。" if -e $myname;
	#	'ファイルテスト演算子.pl'ファイルが存在する。
	warn "'$myname'はディレクトリではない。" unless -d $myname;
	#	'ファイルテスト演算子.pl'はディレクトリではない。 at ファイルテスト演算子.pl line 18.


	say "ここから'-M(最後に変更されてからの日数)'用ファイルテストを行う。";
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks);	# ファイルのstat(プロパティ)情報。

	my $timestampFile = $currentDir . '/' . $asakuno . 'txt';
	open my $file_fh, '>', $timestampFile
		or die "$timestampFileのファイルオープン失敗($!)";
	foreach( @asakuno ) {
		say $file_fh $_;
	}
	close $file_fh;

	say "以下、ファイルのタイムスタンプ取得。";
	($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
	$size, $atime, $mtime, $ctime, $blksize, $blocks)
		= stat($timestampFile);	# ファイルのstat情報。
	say "\t最終アクセス時刻：" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻：" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻：" . &timeformatChange(localtime $ctime);

	say "以下、ファイルの時刻を書き換える。";
	my $now = time - 24 * 60 * 60 * 7;	# 当日から7日前を現在の日時にする。
	my $ago = $now - 24 * 60 * 60 * 2;		# さらに2日前を修正時刻にする。
	utime $now, $ago, $timestampFile;	# タイムスタンプの書き換え実施。

	say "以下、ファイルのタイムスタンプ取得。";
	($dev, $ino, $mode, $nlink, $uid, $gid,
	$rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks)
		= stat($timestampFile);	# ファイルのstat情報。
	say "\t最終アクセス時刻：" . &timeformatChange(localtime $atime);		# 2022年1月9日(日) 22時52分55秒
	say "\t最終更新時刻：" . &timeformatChange(localtime $mtime);			# 2022年1月7日(金) 22時52分55秒	←☆こいつを見ているようだ。
	say "\t最後のinode変更時刻：" . &timeformatChange(localtime $ctime);	# 2022年1月16日(日) 22時52分55秒

	warn "7日前のファイル" if -M $timestampFile > 7;
	#	7日前のファイル at ファイルテスト演算子.pl line 59.
	warn "6日前のファイル" if -M $timestampFile > 6;
	#	6日前のファイル at ファイルテスト演算子.pl line 61.
	warn "8日前のファイル" if -M $timestampFile > 8;
	#	8日前のファイル at ファイルテスト演算子.pl line 63.
	warn "9日前のファイル" if -M $timestampFile > 9;
	#	出力なし。
	my $whatfiledate = -M $timestampFile;
	say "最終更新から$whatfiledate日更新されていない。";	# 最終更新から9日更新されていない。

	unlink $timestampFile or warn "ファイル削除失敗($!)。";
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
