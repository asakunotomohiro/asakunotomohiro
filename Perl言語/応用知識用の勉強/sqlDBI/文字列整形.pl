$VERSION = "0.002";
use v5.24;
use DBI;
use File::Basename;
use Cwd;

package dbisqlite;
package main;
sub main() {
	my $asakuno = "asakuno's neat()";
	say DBI::neat($asakuno);		# 'asakuno's neat()'
	say DBI::neat($asakuno, 16);	# 'asakuno's n...'
	my $tomohiro = 20220228 + 1;
	say DBI::neat($tomohiro);		# 20220229
	#say DBI::neat();	Usage: DBI::neat(sv, maxlen=0) at 文字列整形.pl line 15.
	say DBI::neat( undef );			# undef
}
main();
