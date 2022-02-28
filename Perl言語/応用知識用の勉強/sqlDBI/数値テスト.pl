$VERSION = "0.002";
use v5.24;
use DBI;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "数値テスト。";

package dbisqlite;
package main;
sub main() {
	my @asakuno = (
			20220228,
			'朝来野智博',
			undef,
			0x0F,
			'asakuno',
			'0x0F',
			'Larry Wall',
		);
	my @numbers = DBI::looks_like_number( @asakuno );
	while (my ($index, $value) = each @numbers) {
		print "asakuno[$index]--->";
		if( defined $value ) {
			if( $numbers[$index] ) {
				say "$asakuno[$index]は数値。";
			}
			else{
				say "$asakuno[$index]は文字列。";
			}
		}
		else{
			say "undef。";
		}
	}
}
&main();
# 以下、出力結果。
#		asakuno[0]--->20220228は数値。
#		asakuno[1]--->朝来野智博は文字列。
#		asakuno[2]--->undef。
#		asakuno[3]--->15は数値。	←☆0x0F
#		asakuno[4]--->asakunoは文字列。
#		asakuno[5]--->0x0Fは文字列。
#		asakuno[6]--->Larry Wallは文字列。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
