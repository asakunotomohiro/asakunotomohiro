$VERSION = "0.002";
use v5.24;
use DBI;

package dbimySQL;
sub main() {

	my %option = (
			PrintError => 0,
			RaiseError => 0,
		);

	my $databasefilename = '../../Perl-sqlDBI作成データ/sqlite.db';
	my $dbh1 = DBI->connect(
			"dbi:SQLite:database=$databasefilename",
			"",	# ユーザ名。
			"",	# パスワード。
			\%option,
		) or die "接続失敗(dbh1)。";
	$dbh1->{PrintError} = 1;	# 警告レベルの自動エラー報告を再度有効にする。
	my $rc = $dbh1->disconnect()
			or warn "$dbh1からの切断失敗\n";
	say "$rc";	# 1
}
main();
