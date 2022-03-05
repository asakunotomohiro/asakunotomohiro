package perlStudyGrepoperatorProgramming;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "ファイルの行数を数える。";

sub asakunoInputOutput() {
	my @filename = glob '~/Desktop/*.txt';	# グロブ利用。
	push @ARGV, $filename[0];	# 強制的に、ファイルを起動引数として扱う。
	say "ファイル名：@ARGV";
#	while( <<>> ) {	←☆この処理を活かすことで、ファイル内容を出力する。
#		chomp;
#		say "入力行値：$_";
#	}

#	my $line = grep /.+/, <$ARGV[0]>;	←☆ファイルハンドルを渡す必要があった。
	open my $file_fh, '<', $ARGV[0] or die "$ARGV[0]のファイルオープン失敗($!)";
	my $line = grep /./s, <$file_fh>;	# 改行文字を含めての検索(sオプションで.記号が改行文字も検索対象になる)。
	say "行数：$line";
	close $file_fh;
}
&asakunoInputOutput();

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
