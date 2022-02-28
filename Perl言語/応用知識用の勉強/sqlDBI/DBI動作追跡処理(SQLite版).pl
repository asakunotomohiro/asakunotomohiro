$VERSION = "0.002";
use v5.24;
use DBI;
use File::Basename;	# ファイル名のみ取得(ディレクトリ部分除去)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "DBI追跡-レベル1";

package dbisqlite;
sub new() {
	my $self = shift;
	$self = ref $self || $self;
	my @arg = @_;

	my $currentDir = Cwd::getcwd();	# カレントディレクトリ取得。
	my $permissions = "0755";	# このまま使う場合、10進数と解釈される(8進数に置き換える必要がある)。

	# ディレクトリ名定義。
	my $dirname = $currentDir . '/' . $asakuno;

	my %hash = (
			currentDir => "$currentDir",
			permissions => "$permissions",
			dirname => "$dirname",
			@_,
		);

#	say "ディレクトリを作成する。";
	mkdir $dirname, 0755 or warn "ディレクトリ($dirname)作成失敗($!)。";

	if( -d $dirname ) {
		say "ディレクトリ作成成功。";	# ディレクトリがある。
	}
#	else{
#		say "ディレクトリ作成失敗。";
#	}

	bless \%hash, $self;
}

sub DESTROY() {
	my $self = shift;
	#$self = ref($self) || $self;	この処理は間違い。

	unlink $self->{database} or warn "ファイル削除失敗($!)。";
	rmdir $self->{dirname} or warn "ディレクトリ削除失敗($!)。";
#	if( -d $self->{dirname} ) {
#		say "ディレクトリ削除失敗。";	# ディレクトリが存在する。
#	}
#	else{
#		say "ディレクトリ削除済み。";
#	}
	my $err = eval{
		my $rc = $self->{dbh}->disconnect
				or warn "$self->{dbh}からの切断失敗\n";
		say "$rc";	# 1
	};	# 例外発生時に、evalで無効化する。
	print "$err-$@" if $@;	# 例外発生時のみ、その内容を出力する。
	say '後始末終了。';
}

sub dbconnect() {
	my $self = shift;
	#$self = ref($self) || $self;	この処理は間違い。

	my %option = (	# 以下、警告レベルの自動エラー報告を無効化。
			PrintError => 0,	# warn経由でエラー報告なし。
			RaiseError => 0,	# die経由でエラー報告なし。
		);

	my $databasefilename = "$self->{dirname}/sqlite.db";
	$self->{database} = "$databasefilename";
	my $dbh1 = '接続用';
	DBI->trace(1) if $self->{trace} == 1;	# レベル1ですら大量のログが発生する。
	my $err = eval{
		$dbh1 = DBI->connect(
				"dbi:SQLite:database=$databasefilename",
				"",	# ユーザ名。
				"",	# パスワード。
				\%option,
			) or die "接続失敗(" . $DBI::errstr . ")。";
		$self->{dbh} = $dbh1;
		$dbh1->{PrintError} = 1;	# 警告レベルの自動エラー報告を有効に切り替え。
	};
	print "$err-$@" if $@;	# 例外発生時のみ、その内容を出力する。
}

sub select() {
	my $self = shift;

	my $sth = $self->{dbh}->prepare('create table ASAKUNOTOMOHIRO( asakuno INTEGER, tomohiro varchar(20) )')
		or die "テーブル作成の準備失敗(" . $self->{dbh}->errstr . ")。";
	$sth->execute
		or die "テーブル作成失敗($sth->errstr)。";

	my $sth = $self->{dbh}->prepare('insert into ASAKUNOTOMOHIRO (asakuno, tomohiro) values (?, ?);')
		or die "SQL文の準備失敗(" . $self->{dbh}->errstr . ")。";

	$sth->execute('asakuno', '朝来野')
		or die "SQL文の実行失敗(" . $sth->errstr . ")。";

	my $sth = $self->{dbh}->prepare('select * from ASAKUNOTOMOHIRO;')
		or die "SQL文の準備失敗(" . $self->{dbh}->errstr . ")。";
	$sth->execute
		or die "SQL文の実行失敗(" . $sth->errstr . ")。";

	my @table = $sth->fetchrow_array();
	say "テーブル内容：@table";
}

package main;
sub main() {
	my $object = dbisqlite->new(trace=>1);
	$object->dbconnect();
	$object->select();
}
main();
