use v5.24;
use DBI;
$VERSION = "0.002";

package dbiDatasource;
sub main() {
	my @drivers = DBI->available_drivers();
	die 'DBIドライバが存在しない。' unless @drivers;
}
main();
