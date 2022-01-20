package perlStudylocaltime;
$VERSION = "0.002";
use v5.24;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "lstat関数利用";

sub asakuno() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $entity = $currentDir . '/' . $asakuno . '.txt';
	open my $file_fh, '>', $entity
		or die "$entityのファイルオープン失敗($!)";
	foreach( @asakuno ) {
		say $file_fh $_;
	}
	close $file_fh;
	my $virtual = '仮想.md';
#	sleep 3;
	symlink $entity, $virtual or warn "シンボリックリンクファイル作成失敗($!)。";

	say "以下、stat情報を実体ファイルとシンボリックリンクファイルで比較した。";
#	say "'$asakuno.txt'ファイルが存在する。" if -e $entity;
#	say "'$virtual'ファイルが存在する。" if -e $virtual;
	my @stat_entity = stat($entity);	# ファイルのstat情報。;
	my @stat_virtual = stat($virtual);	# ファイルのstat情報。;

	while( my($index, $value) = each @stat_entity ) {
		if( $value eq $stat_virtual[$index] ){
			if( $index >= 8 and $index <= 10 ) {
				my $entity_time = &timeformatChange(localtime $value);
				my $virtual_time = &timeformatChange(localtime $stat_virtual[$index]);
				say "実体($entity_time)==リンクファイル($virtual_time)";
			}
			else{
				say "実体($value)==リンクファイル($stat_virtual[$index])";
			}
		}
		else{
			say "実体($value)!=リンクファイル($stat_virtual[$index])";
		}
	}

	unlink $virtual or warn "$virtualファイル削除失敗($!)。";
	unlink $entity or warn "$entityファイル削除失敗($!)。";
}
#&asakuno(@ARGV);
# 以下、出力結果。
#			以下、stat情報を実体ファイルとシンボリックリンクファイルで比較した。
#			実体(16777220)==リンクファイル(16777220)
#			実体(67643587)==リンクファイル(67643587)
#			実体(33188)==リンクファイル(33188)
#			実体(1)==リンクファイル(1)
#			実体(501)==リンクファイル(501)
#			実体(20)==リンクファイル(20)
#			実体(0)==リンクファイル(0)
#			実体(33)==リンクファイル(33)
#			実体(2022年1月20日(木) 10時51分31秒)==リンクファイル(2022年1月20日(木) 10時51分31秒)
#			実体(2022年1月20日(木) 10時51分31秒)==リンクファイル(2022年1月20日(木) 10時51分31秒)
#			実体(2022年1月20日(木) 10時51分31秒)==リンクファイル(2022年1月20日(木) 10時51分31秒)
#			実体(4096)==リンクファイル(4096)
#			実体(8)==リンクファイル(8)

my @stat_memo = (
	"0 dev ファイルのデバイス番号",
	"1 ino ファイルのiノード番号",
	"2 mode ファイルの権限ビットとそれ以外の数ビットを合わせたもの",
	"3 nlink ファイルまたはディレクトリに対するハードリンクの個数",
	"4 uid ファイルの所有者を表すユーザID",
	"5 gid ファイルの所有者を表すグループID",
	"6 rdev デバイス識別子(特殊ファイルのみ)",
	"7 size ファイルの容量をバイト単位で表す",
	"8 atime 最終アクセス時刻",
	"9 mtime 最終更新時刻",
	"10 ctime 最後のinode変更時刻",
	"11 blksize ファイルシステムI/Oでのブロックサイズ",
	"12 blocks 割り当てられたブロック数",
);

sub tomohiro() {
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	my $entity = $currentDir . '/' . $asakuno . '.txt';
	open my $file_fh, '>', $entity
		or die "$entityのファイルオープン失敗($!)";
	foreach( @asakuno ) {
		say $file_fh $_;
	}
	close $file_fh;
	my $virtual = '仮想.md';
	sleep 1;
	symlink $entity, $virtual or warn "シンボリックリンクファイル作成失敗($!)。";

	say "以下、stat情報を実体ファイルとシンボリックリンクファイルで比較した。";
	my @stat_entity = stat($entity);	# ファイルのstat情報。;
	my @stat_virtual = lstat($virtual);	# ファイルのstat情報。;

	foreach my $index ( 0..$#stat_entity ) {
		if( $stat_entity[$index] eq $stat_virtual[$index] ){
			if( $index >= 8 and $index <= 10 ) {
				my $entity_time = &timeformatChange(localtime $stat_entity[$index]);
				my $virtual_time = &timeformatChange(localtime $stat_virtual[$index]);
				say "実体($entity_time)==リンクファイル($virtual_time) ←$stat_memo[$index]";
			}
			else{
				say "実体($stat_entity[$index])==リンクファイル($stat_virtual[$index]) ←$stat_memo[$index]";
			}
		}
		else{
			say "実体($stat_entity[$index])!=リンクファイル($stat_virtual[$index]) ←$stat_memo[$index]";
		}
	}

	unlink $virtual or warn "$virtualファイル削除失敗($!)。";
	unlink $entity or warn "$entityファイル削除失敗($!)。";
}
&tomohiro(@ARGV);
# 出力結果：
#		以下、stat情報を実体ファイルとシンボリックリンクファイルで比較した。
#		実体(16777220)==リンクファイル(16777220) ←0 dev ファイルのデバイス番号
#		実体(67645267)!=リンクファイル(67645268) ←1 ino ファイルのiノード番号
#		実体(33188)!=リンクファイル(41453) ←2 mode ファイルの権限ビットとそれ以外の数ビットを合わせたもの
#		実体(1)==リンクファイル(1) ←3 nlink ファイルまたはディレクトリに対するハードリンクの個数
#		実体(501)==リンクファイル(501) ←4 uid ファイルの所有者を表すユーザID
#		実体(20)==リンクファイル(20) ←5 gid ファイルの所有者を表すグループID
#		実体(0)==リンクファイル(0) ←6 rdev デバイス識別子(特殊ファイルのみ)
#		実体(33)!=リンクファイル(171) ←7 size ファイルの容量をバイト単位で表す
#		実体(1642645715)!=リンクファイル(1642645716) ←8 atime 最終アクセス時刻
#		実体(1642645715)!=リンクファイル(1642645716) ←9 mtime 最終更新時刻
#		実体(1642645715)!=リンクファイル(1642645716) ←10 ctime 最後のinode変更時刻
#		実体(4096)==リンクファイル(4096) ←11 blksize ファイルシステムI/Oでのブロックサイズ
#		実体(8)!=リンクファイル(0) ←12 blocks 割り当てられたブロック数

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
