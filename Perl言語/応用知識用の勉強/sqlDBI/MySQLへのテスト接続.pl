$VERSION = "0.002";
use v5.24;
use DBI;
#use DBI::Pg;
#use Pg;

package dbimySQL;
sub main() {
	my $driver  = "Pg";	# Postgresql
	my $driver  = "mysql";
	my $database = "";	# 現時点で作っていない。
	my $drivername = "DBI:$driver:$database";
	my $hostname = "";	# ドッカー作成時に作成したのでいい？
	my $port = "8080";	# ドッカー作成時に作成したのでいい？
	my $userid = "postgres";	# ユーザ名も設定していない。	←☆以下もだろうが、データベース作成時に設定したものだよね。
	my $password = "1234";	# ドッカー作成時に設定したのでいい？	←☆いいわけないよね。
#	my $dbh = DBI->connect(	←☆DBI->connect using 'old-style' syntax is deprecated and will be an error in future versions at postgreSQLへのテスト接続.pl line 14.
#			$drivername, $host, $port, $userid, $password,
#		) or die "接続失敗\n";
	#my $dbh = DBI->connect("dbi:Pg:dbname=$database", "", "");
		# また、エラーが発生した。
		#	install_driver(Pg) failed: Can't locate DBD/Pg.pm in @INC (you may need to install the DBD::Pg module) (@INC contains: 〜) at (eval 6) line 3.
	my $dsn = "DBI:mysql:database=$database;host=$hostname;port=$port";
	my $dbh = DBI->connect("$dsn", "", "");
}
main();
