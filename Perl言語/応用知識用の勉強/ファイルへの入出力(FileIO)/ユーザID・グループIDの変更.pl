package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ユーザID・グループIDの変更";
		# スーパーユーザでの実行のみ、所有者を変更できるだろう。

sub asakunoInputOutput() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される。
	my $user = '';
	my $group = '';
	my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks);	# ファイルのstat(プロパティ)情報。

	if( -d $asakuno[1] ) {
		warn "同名の$asakuno[1]ディレクトリが存在する。";
	}
	mkdir $asakuno[1], oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	my $dirunderFile = "$currentDir/$asakuno[1]/$asakuno[0]";
	if( -d $asakuno[1] ) {
		say "$asakuno[1]ディレクトリに、$asakuno[0]ファイルを作成する。";

		open my $file_fh, '>', $dirunderFile
			or die "$dirunderFileのファイルオープン失敗($!)";
		foreach( @asakuno ) {
			say $file_fh $_;
		}
		close $file_fh;

		say "以下、ファイルのオーナ情報取得。";
		($dev, $ino, $mode, $nlink, $uid, $gid,
		$rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks)
			= stat($dirunderFile);	# ファイルのstat(プロパティ)情報。
		say "ユーザID：$uid";
		say "グループID：$gid";
#		以下、ハッシュに代入できると思ったのだが、甘かった(代入が完全に崩れてしまっている)。
#		my %stathash = stat($dirunderFile);
#		say "uid：$stathash{uid}";
#		foreach my $key (keys(%stathash)) {
#			my $value = $stathash{$key};
#			say "$key -> $value";
#		}
#			よく考えたらできないわ(キーと値の組み合わせで代入できないのだから)。

		say "以下、ファイルのオーナを書き換える。";
		defined(my $useid = getpwnam 'Guest') or die 'ユーザ名からID取得失敗。';
		defined(my $groupid = getgrnam 'procview') or die 'ユーザグループ名からID取得失敗。';
		chown $useid, $groupid, $dirunderFile;	# 変わらず・・・なぜ？
		say "書き換え後のユーザID予想：$useid";
		say "書き換え後のグループID予想：$groupid";

		say "以下、ファイルのオーナ情報取得。";
		($dev, $ino, $mode, $nlink, $uid, $gid,
		$rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks)
			= stat($dirunderFile);	# ファイルのstat(プロパティ)情報。
		say "ユーザID：$uid";	# 変更前の値と同じだった。
		say "グループID：$gid";	# 変更前の値と同じだった。
	}

	unlink $dirunderFile or warn "ファイル削除失敗($!)。";
	if( -f $dirunderFile ) {
		say "$asakuno[1]ファイルがある。";
	}
	else {
		say "$asakuno[1]ファイル削除済み。";
		rmdir $asakuno[1] or warn "ディレクトリ削除失敗($!)。";
		unless( -d $asakuno[1] ) {
			say "$asakuno[1]ディレクトリ削除成功。";
		}
	}
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
