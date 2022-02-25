$VERSION = "0.002";
use v5.24;
use DBI;

package dbiPostgresql;
sub main() {
	my $driver  = "Pg";
	my $database = "testdb";
	my $drivername = "DBI:$driver:$database";
	my $host = "127.0.0.1";
	my $port = "8080";
	my $userid = "postgres";
	my $password = "1234";
#	my $dbh = DBI->connect(	←☆DBI->connect using 'old-style' syntax is deprecated and will be an error in future versions at postgreSQLへのテスト接続.pl line 14.
#			$drivername,
#			$host,
#			$port,
#			$userid,
#			$password,
#		) or die "接続失敗\n";
}
main();
