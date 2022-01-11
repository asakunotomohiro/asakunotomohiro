package perlStudyDirectoryInputOutput;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ディレクトリ作成。";

sub asakunoInputOutput() {
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(0755=>01363)。
	unless( -d $asakuno ) {
		say "$asakunoディレクトリがない。";
	}
	mkdir $asakuno, oct($permissions) or warn "ディレクトリ作成失敗($!)。";
	if( -d $asakuno ) {
		say "$asakunoディレクトリがある。";
	}
	rmdir $asakuno or warn "ディレクトリ削除失敗($!)。";
	if( -d $asakuno ) {
		say "$asakunoディレクトリがある。";
	}
	else {
		say "$asakunoディレクトリ削除済み。";
	}
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
