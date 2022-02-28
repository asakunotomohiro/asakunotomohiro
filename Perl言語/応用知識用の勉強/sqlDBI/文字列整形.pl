$VERSION = "0.002";
use v5.24;
use DBI;
use File::Basename;
use Cwd;

package dbisqlite;
package main;
sub main() {
	say '以下、DBI::neatの実行。';
	my $asakuno = "asakuno's neat()";
	say DBI::neat($asakuno);		# 'asakuno's neat()'
	say DBI::neat($asakuno, 16);	# 'asakuno's n...'
	my $tomohiro = 20220228 + 1;
	say DBI::neat($tomohiro);		# 20220229
	#say DBI::neat();	Usage: DBI::neat(sv, maxlen=0) at 文字列整形.pl line 15.
	say DBI::neat( undef );			# undef

	say '以下、DBI::neat_listの実行。';
	my @asakuno = ( "asakuno's neat_list()", '', 20220228, undef, 'neat_list' );
	say DBI::neat_list(\@asakuno);				# 'asakuno's neat_list()', '', 20220228, undef, 'neat_list'
	say DBI::neat_list(\@asakuno, 15);			# 'asakuno's ...', '', 20220228, undef, 'neat_list'
	say DBI::neat_list(\@asakuno, 15, "> <");	# 'asakuno's ...'> <''> <20220228> <undef> <'neat_list'
}
&main();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
