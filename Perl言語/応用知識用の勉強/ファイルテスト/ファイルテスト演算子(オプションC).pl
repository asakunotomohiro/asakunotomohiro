package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイルテスト演算子のA";

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
	sleep 1;

	say "ファイル読み込み。";
	open my $file_fh, '<', $filename or die "$filenameのファイルオープン失敗($!)";
	while( defined(my $line = <$file_fh>) ) {
		chomp $line;	# 改行削除。
		say "\t$.行目-内容：$line";
	}
	close $file_fh;

	my $cfiletime = '';
	if( defined( -C $filename )) {
		$cfiletime = -C $filename;
		say "ファイルあり($cfiletime)。";
	}
	else{
		say "ファイルなし。";
	}

	say "以下、ファイル作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\t最終アクセス時刻：\t\t\t" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻：\t\t\t\t" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻(これ)：\t" . &timeformatChange(localtime $ctime);
	say "\t-Cオプション取得：\t\t\t$cfiletime(マイナス表記は未来)";
	my $mfiletime = -M $filename;
	say "\t-Mオプション取得：\t\t\t$mfiletime(マイナス表記は未来)";

	if( -C $filename ) {
		say "ファイルあり。";
		say "\t" . '$cfiletime：' . "\t$cfiletime";
		say "\t" . '$ctime：' . "\t\t$ctime";
	}
	else{
		say "ファイルなし。";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	if( -C $filename ) {
		say "ファイルあり。";
	}
	else{
		say "ファイルなし。";
	}
}
#&asakuno(@ARGV);

sub tomohiro() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ディレクトリ名定義。
	my $dirname = $currentDir . '/' . $asakuno;

	say "ディレクトリを作成する。";
	sleep 1;	# これがない場合、取得結果が0になる。
	mkdir $dirname, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	sleep 1;

	say "以下、ディレクトリ内容読み込み()。";
	opendir my $dh, $dirname or die "ディレクトリオープン失敗($!)。";
	foreach my $dirfile (readdir $dh) {
	#	say $dirfile;
	}
	sleep 1;

	my $cdirtime = -C $dirname;
	if( defined( $cdirtime )) {
		say "ディレクトリあり($cdirtime)。";
	}
	else{
		say "ディレクトリなし($cdirtime)。";
	}

	say "以下、ディレクトリ作成後の情報。";
	my ($dev, $ino, $mode, $nlink, $uid, $gid,
		$rdev, $size, $atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($dirname);	# ファイルのlstat(プロパティ)情報。
	say "\t最終アクセス時刻：\t\t\t" . &timeformatChange(localtime $atime);
	say "\t最終更新時刻：\t\t\t\t" . &timeformatChange(localtime $mtime);
	say "\t最後のinode変更時刻(これ)：\t" . &timeformatChange(localtime $ctime);
	say "\t-Cオプション取得：\t\t\t$cdirtime(マイナス表記は未来)";
	my $mdirtime = -M $dirname;
	say "\t-Mオプション取得：\t\t\t$mdirtime(マイナス表記は未来)";
	my $adirtime = -A $dirname;
	say "\t-Aオプション取得：\t\t\t$adirtime(マイナス表記は未来)";

	if( -C $dirname ) {
		say "ディレクトリあり。";
	}
	else{
		say "ディレクトリなし。";
	}

	say "ディレクトリ削除。";
	rmdir $dirname or warn "ディレクトリ削除失敗($!)。";
	if( -C $dirname ) {
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
