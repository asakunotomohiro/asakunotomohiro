$VERSION = "0.002";
use v5.24;
use DBI;

package dbiDatasource;
sub main() {
	my @drivers = DBI->available_drivers();
	die 'DBIドライバが存在しない。' unless @drivers;

	say "@drivers";	# DBM ExampleP File Gofer Mem Proxy Sponge
}
main();
