package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "stat関数利用";

sub asakuno() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。
	my $nlinkFile = $currentDir . '/' . $asakuno . '.txt';
	open my $file_fh, '>', $nlinkFile
		or die "$nlinkFileのファイルオープン失敗($!)";
	foreach( @asakuno ) {
		say $file_fh $_;
	}
	close $file_fh;

	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkFile);	# ファイルのstat情報。;

	say "以下、stat情報のnlinkについて。";
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 1

	say "以下、ハードリンクを作成(1個目)。";
	link $nlinkFile, $asakuno[1] or warn "ハードリンクファイル作成失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkFile);	# ファイルのstat情報。;
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 2

	say "以下、ハードリンクを作成(2個目)。";
	link $nlinkFile, $asakuno[2] or warn "ハードリンクファイル作成失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkFile);	# ファイルのstat情報。;
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 3

	say "1個目のハードリンクファイル削除。";
	unlink $asakuno[1] or warn "$asakuno[1]ファイル削除失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkFile);	# ファイルのstat情報。;
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 2

	say "大本のファイル削除。";
	unlink $nlinkFile or warn "$nlinkFileファイル削除失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($asakuno[2]);	# ファイルのstat情報。;
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 1

	say "2個目のハードリンクファイル削除。";
	unlink $asakuno[2] or warn "$asakuno[2]ファイル削除失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($asakuno[2]);	# ファイルのstat情報。;
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 空文字列(undef)
}
&asakuno(@ARGV);
# 以下、出力結果。
#		以下、stat情報のnlinkについて。
#			ファイルまたはディレクトリに対するハードリンクの個数：	1
#		以下、ハードリンクを作成(1個目)。
#			ファイルまたはディレクトリに対するハードリンクの個数：	2
#		以下、ハードリンクを作成(2個目)。
#			ファイルまたはディレクトリに対するハードリンクの個数：	3
#		1個目のハードリンクファイル削除。
#			ファイルまたはディレクトリに対するハードリンクの個数：	2
#		大本のファイル削除。
#			ファイルまたはディレクトリに対するハードリンクの個数：	1
#		2個目のハードリンクファイル削除。
#			ファイルまたはディレクトリに対するハードリンクの個数：	

sub tomohiro() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。
	mkdir $asakuno, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	my $nlinkDir = $currentDir . '/' . $asakuno;

	my ($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkDir);	# ディレクトリのstat情報。;

	say "以下、stat情報のnlinkについて。";
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 2

	say "以下、ハードリンクを作成。";
	my $hardLinkDir = $currentDir . '/別ディレクトリ/';
	link $nlinkDir, $hardLinkDir . 'test' or warn "ハードリンクディレクトリ作成失敗($!)。";
		# ハードリンクディレクトリ作成失敗(Operation not permitted)。 at stat関数-nlinkに特化.pl line 103.

	say "以下、ソフトリンクを作成(1個目)。";
	symlink $nlinkDir, $asakuno[0] or warn "シンボリックリンクディレクトリ作成失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkDir);	# ファイルのstat情報。;
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 2

	say "以下、ソフトリンクを作成(2個目)。";
	symlink $nlinkDir, $asakuno[1] or warn "シンボリックリンクディレクトリ作成失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkDir);	# ファイルのstat情報。;
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 2

	say "1個目のソフトリンクファイル削除。";
	unlink $asakuno[0] or warn "$asakuno[0]ディレクトリ削除失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($nlinkDir);	# ファイルのstat情報。;
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 2

	say "大本のファイル削除。";
	rmdir $nlinkDir or warn "$nlinkDirディレクトリ削除失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($asakuno[0]);	# ファイルのstat情報。;
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 空文字列(undef)

	say "2個目のソフトリンクファイル削除。";
	unlink $asakuno[0] or warn "$asakuno[0]ディレクトリ削除失敗($!)。";
	($dev, $ino, $mode, $nlink,
		$uid, $gid, $rdev, $size,
		$atime, $mtime, $ctime,
		$blksize, $blocks) = stat($asakuno[0]);	# ファイルのstat情報。;
	say "\tファイルまたはディレクトリに対するハードリンクの個数：\t$nlink";	# 空文字列(undef)
}
&tomohiro(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
