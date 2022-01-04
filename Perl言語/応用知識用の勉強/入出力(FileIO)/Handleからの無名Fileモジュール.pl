package perlStudyInputOutput;
$VERSION = "0.003";
use v5.24;
use IO::File;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル読み込み。";

sub asakunoInputOutput() {
	my @file;
	foreach my $file ( glob( $_[0] . '/*.txt')) {
		push @file, [
				(IO::File->new($file, 'r') || die "引数にディレクトリを指定すること($!)。"),	# このエラーはいつ発生する？
			];
	}

	foreach my $files ( @file ) {
		#while( $file->[0]->getline ) {
		#while( $file->[1] ) {
#		while( $file->[1] ) {
#			chomp;
#			say;
#		}
#		say {$file->[1]} $file->[0]->getline;
		#say $file->[0]->getline;
		#foreach ( $file->[0] ) {
		#foreach ( $file->[0]->getline ) {
		foreach my $file ( $files->[0] ) {
			#say $file;
			#if( defined( my $line = $file->[0]->getline)) {
#			if( defined( $file )) {
#				say $file;
#			}
			while( <$file> ) {
				chomp;
				say;
			}
		}
	}

	#$file->close;	# 関数終了後に閉じるため、わざわざ処理不要。
	#undef $file;	# 閉じる方法はこっちでも構わない。
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
