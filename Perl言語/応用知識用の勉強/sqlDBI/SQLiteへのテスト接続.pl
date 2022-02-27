$VERSION = "0.002";
use v5.24;
use DBI;

package dbisqlite;
sub main() {
#	my @databases = DBI->data_sources("SQLite");
#	say "@databases";	# 空文字列(undef)
#	foreach my $source ( @databases ) {
#		say "$source";	#
#	}

	my $databasefilename = '../../Perl-sqlDBI作成データ/sqlite.db';
	my $dbh1 = DBI->connect(
			"dbi:SQLite:database=$databasefilename",
			"",	# ユーザ名。
			"",	# パスワード。
			{'RaiseError' => 1},
		) or die "接続失敗(dbh1)。";
	my $dbh2 = DBI->connect(
			"dbi:SQLite:database=$databasefilename",
			"",	# ユーザ名。
			"",	# パスワード。
			{'RaiseError' => 1},
		) or die "接続失敗(dbh2)。";
	my $rc = $dbh1->disconnect()
			or warn "$dbh1からの切断失敗\n";
	say "$rc";	# 1
	my $rc = $dbh2->disconnect()
			or warn "$dbh2からの切断失敗\n";
	say "$rc";	# 1
}
main();
