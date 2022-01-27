package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイルテスト演算子のM";

sub asakuno() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ファイル名のみ作成。
	my $filename = $currentDir . '/' . $asakuno . '.txt';

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename
		or die "$filenameのファイルオープン失敗($!)";
	sleep 1;
	foreach( @asakuno ) {
		say $file_fh $_;	# ファイルへの書き込み。
	}
	sleep 1;
	close $file_fh;

	my $mfiletime = '';
	if( -M $filename ) {
		$mfiletime = -M $filename;
		say "ファイルあり($mfiletime)。";
	}
	else{
		say "ファイルなし。";
	}

	say "以下、ファイル作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\t最終アクセス時刻：\t\t" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻(これ)：\t" . &timeformatChange(localtime $mtime);
	say "\t-Mオプション取得：\t\t$mfiletime(マイナス表記は未来)";
	say "\t最後のinode変更時刻：\t" . &timeformatChange(localtime $ctime);

	if( -M $filename ) {
		say "ファイルあり。";
		say "\t" . '$mfiletime：' . "\t$mfiletime";
		say "\t" . '$mtime：' . "\t\t$mtime";
	}
	else{
		say "ファイルなし。";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	if( -M $filename ) {
		say "ファイルあり。";
	}
	else{
		say "ファイルなし。";
	}
}
&asakuno(@ARGV);

sub tomohiro() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ディレクトリ名定義。
	my $dirname = $currentDir . '/' . $asakuno;

	say "ディレクトリを作成する。";
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	sleep 5;

	my $mdirtime = '';
	if( -M $dirname ) {
		$mdirtime = -M $dirname;
		say "ディレクトリあり($mdirtime)。";
	}
	else{
		$mdirtime = -M $dirname;
		say "ディレクトリなし($mdirtime)。";
	}

	say "以下、ディレクトリ作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($dirname);	# ファイルのlstat(プロパティ)情報。
	say "\t最終アクセス時刻：\t\t" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻(これ)：\t" . &timeformatChange(localtime $mtime);
	say "\t-Mオプション取得：\t\t$mdirtime(マイナス表記は未来)";
	say "\t最後のinode変更時刻：\t" . &timeformatChange(localtime $ctime);

	if( -M $dirname ) {
		say "ディレクトリあり。";
	}
	else{
		say "ディレクトリなし。";
	}

	say "ディレクトリ削除。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	if( -M $dirname ) {
		say "ディレクトリあり。";
	}
	else{
		say "ディレクトリなし(削除済みの判断でなしとしたわけではない)。";
	}
}
&tomohiro(@ARGV);


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
