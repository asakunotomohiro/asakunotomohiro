package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイルテスト演算子のf";

sub asakuno() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ファイル名のみ作成。
	my $filename = $currentDir . '/' . $asakuno . 'txt';

	unless( -f $filename ) {
		say "ファイル作成前。";
	}

	say "ファイルを作成する。";
	open my $file_fh, '>', $filename
		or die "$filenameのファイルオープン失敗($!)";
	foreach( @asakuno ) {
		say $file_fh $_;	# ファイルへの書き込み。
	}
	close $file_fh;

	if( -f $filename ) {
		say "ファイルあり。";
	}
	else{
		say "ファイルなし。";
	}

	say "以下、ファイル作成後の情報。";
	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = lstat($filename);	# ファイルのlstat(プロパティ)情報。
	say "\tファイルまたはディレクトリに対するハードリンクの個数：$nlink";
	say "\tファイルの容量をバイト単位で表す(ファイルテスト-sと同じ)：$size";
	say "\tファイルシステムI/Oでのブロックサイズ：$blksize";
	say "\t割り当てられたブロック数：$blocks";

	if( -f $filename ) {
		say "ファイルあり。";
	}
	else{
		say "ファイルなし。";
	}

	say "ファイル削除。";
	unlink $filename or warn "ファイル削除失敗($!)。";
	if( -s $filename ) {
		say "ファイルあり。";
	}
	else{
		say "ファイルなし。";
	}
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
