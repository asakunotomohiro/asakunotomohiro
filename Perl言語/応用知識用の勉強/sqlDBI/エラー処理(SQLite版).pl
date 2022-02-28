$VERSION = "0.002";
use v5.24;
use DBI;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

#say "接続失敗するために、ディレクトリ権限を外す。";	←☆外さない。その代わりに、存在しないテーブルにセレクト文をかける。

package dbisqlite;
sub new() {
	my $self = shift;
	$self = ref $self || $self;

	my $currentDir = Cwd::getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ディレクトリ名定義。
	my $dirname = $currentDir . '/' . $asakuno;

	my %hash = (
			currentDir => "$currentDir",
			permissions => "$permissions",
			dirname => "$dirname",
		);

#	say "ディレクトリを作成する。";
	#mkdir $dirname, 0555 or warn "ディレクトリ($dirname)作成失敗($!)。";	# 権限を外したディレクトリ作成(ここにファイルを作成する)。
		# 補足：本来755の権限を付けるのが通常。
		# そのため、555が付いているディレクトリ配下への作業は失敗する(誤解を生む日本語説明か？)。
	mkdir $dirname, 0755 or warn "ディレクトリ($dirname)作成失敗($!)。";

	if( -d $dirname ) {
		say "ディレクトリ作成成功。";	# ディレクトリがある。
	}
	else{
		say "ディレクトリ作成失敗。";
	}

	bless \%hash, $self;
}

sub DESTROY() {
	my $self = shift;
	#$self = ref($self) || $self;	この処理は間違い。

	#chmod oct($self->{permissions}), $self->{dirname} or warn "$self->{dirname}ディレクトリの権限変更失敗($!)。";
	#	Perlの場合は、ディレクトリそのものの権限は気にせずに操作する。
	#	作業ディレクトリの権限のみが影響するため、今回は権限を付与しないことにした。
	unlink $self->{database} or warn "ファイル削除失敗($!)。";
	rmdir $self->{dirname} or warn "ディレクトリ削除失敗($!)。";
	if( -d $self->{dirname} ) {
		say "ディレクトリ削除失敗。";	# ディレクトリが存在する。
	}
	else{
		say "ディレクトリ削除済み。";
	}
	my $rc = $self->{dbh}->disconnect
			or warn "$self->{dbh}からの切断失敗\n";
	say "$rc";	# 1
	say '後始末終了。';
}

sub dbconnect() {
	my $self = shift;
	#$self = ref($self) || $self;	この処理は間違い。

	my %option = (
			PrintError => 0,
			RaiseError => 0,
		);

	my $databasefilename = "$self->{dirname}/sqlite.db";
	$self->{database} = "$databasefilename";
	my $dbh1 = DBI->connect(
			"dbi:SQLite:database=$databasefilename",
			"",	# ユーザ名。
			"",	# パスワード。
			\%option,
		) or die "接続失敗($DBI::errstr)。";	# 接続失敗した場合も戻り値があるため、接続可否が判断できないように思うぞ。だからdieするのか。
	$self->{dbh} = $dbh1;
	$dbh1->{PrintError} = 1;	# 警告レベルの自動エラー報告を再度有効にする。	←☆現時点で、接続に失敗しているため、ここの処理まで来ない。
}

sub select() {
	# このファイルの中で一番やりたい処理がここの関数。
	my $self = shift;

	my $sth = $self->{dbh}->prepare('create table hoge( asakuno INTEGER, tomohiro varchar(20) )')
		or die "テーブル作成の準備失敗(" . $self->{dbh}->errstr . ")。";
	$sth->execute
		or die "テーブル作成失敗($sth->errstr)。";

	my $sth = $self->{dbh}->prepare('insert into hoge (asakuno, tomohiro) values (?, ?);')
		or die "SQL文の準備失敗(" . $self->{dbh}->errstr . ")。";

	# 以下の処理で失敗する。
	$sth->execute('asakuno')	# 本来であれば2項目文を追加すべきなのに、今回1つしかないため、エラーになる。
		or die "SQL文の実行失敗(" . $sth->errstr . ")。";
		# DBD::SQLite::st execute failed: called with 1 bind variables when 2 are needed at エラー処理(SQLite版).pl line 100.
		# SQL文の実行失敗(called with 1 bind variables when 2 are needed)。 at エラー処理(SQLite版).pl line 100.

	my $sth = $self->{dbh}->prepare('select * from hoge;')
		or die "SQL文の準備失敗(" . $self->{dbh}->errstr . ")。";
	$sth->execute
		or die "SQL文の実行失敗($sth->errstr)。";

	my @table = $sth->fetchrow_array();
	say "テーブル内容：@table";
}

package main;
sub main() {
	my $object = dbisqlite->new();
	$object->dbconnect();
	$object->select();
}
&main();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
