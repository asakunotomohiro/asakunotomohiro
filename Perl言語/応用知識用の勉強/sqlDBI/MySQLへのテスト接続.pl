$VERSION = "0.002";
use v5.24;
use DBI;
#use DBI::Pg;
#use Pg;
#use DBD::mysql;

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
#say "@INC";
#	my @databases = DBI->data_sources("mysql");	エラー。
	#my @databases = DBI->data_sources("mysqlPP");
	my @databases = DBI->data_sources("SQLite");
	say "@databases";	# 空文字列(undef)
	foreach my $source ( @databases ) {
		say "$source";	#
	}

	my $databasefilename = '../../Perl-sqlDBI作成データ/sqlite.db';
	my $dbh = DBI->connect(
			#"dbi:mysqlPP:database='hoge';host=localhost;port=8080:80",
			#"dbi:mysqlPP:database='hoge';host=0.0.0.0;port=8080:80",
			#"dbi:mysqlPP:database='hoge';host=local;port=8080:80",
			#"dbi:mysqlPP:database='hoge';host=local;port=3306:80",
			#"dbi:mysqlPP:database='hoge';host=local;port=33060:80",
			#"dbi:mysqlPP:database='hoge';host=mysql20220226;port=8080:80",
			"dbi:SQLite:database=$databasefilename",
			"",	# ユーザ名。
			"",	# パスワード。
			{'RaiseError' => 1},
		);

#	my @databases = DBI->data_sources("PgPP");	エラー。
#	my $drh = DBI->install_driver("mysql");
#	my $dsn = "DBI:mysql:database=$database;host=$hostname;port=$port";
#	my $dbh = DBI->connect("$dsn", "", "");
}
main();
