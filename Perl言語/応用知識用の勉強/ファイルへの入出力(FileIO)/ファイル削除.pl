package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル削除";

sub asakunoInputOutput() {
	#say unlink @asakuno;	# 消えた。
#			$ ls 朝来野 智博 asakuno
#			asakuno		智博		朝来野
#			$ perl ./ファイル削除.pl
#			ファイル削除
#			2
#			以上。
#			$ ls 朝来野 智博 asakuno
#			ls: 智博: No such file or directory
#			ls: 朝来野: No such file or directory
#			asakuno
#			$

	my $currentDir = getcwd();	# カレントディレクトリ取得。
	say "以下、ファイル作成前のディレクトリ配下の状況。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
#		next if $filename =~ /^[.]/;	# 先頭がピリオドで始まる場合、先頭処理に戻る。
#		next unless @asakuno ~~ /$filename/;	# スマートマッチ演算子と正規表現検索の組み合わせ。
		say "\t" . $filename;
#				.
#				..
#				基礎知識用の勉強
#				version.pl
#				.DS_Store
#				.README.md.swp
#				README.md
#				応用知識用の勉強
#				helloWorld.pl
#				環境構築(インストール).md
#				Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける
	}
	say "ファイル作成実施。";
	foreach my $file ( @asakuno ) {
		if( ! open FILE, '>>', $file) {
			die "書き込み失敗($!)。"
		}
	}
	say "以下、ファイル作成後(削除前)のディレクトリ配下の状況。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
#		next if $filename =~ /^[.]/;	# 先頭がピリオドで始まる場合、先頭処理に戻る。
#		next unless @asakuno ~~ /$filename/;	# スマートマッチ演算子と正規表現検索の組み合わせ。
		say "\t" . $filename;
#				.
#				..
#				基礎知識用の勉強
#				version.pl
#				.DS_Store
#				.README.md.swp
#				智博
#				朝来野智博
#				README.md
#				朝来野
#				応用知識用の勉強
#				helloWorld.pl
#				環境構築(インストール).md
#				Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける
	}
	say "以下、ファイル削除処理実施(0が削除失敗)。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
		next if $filename =~ /^[.]/;	# 先頭がピリオドで始まる場合、先頭処理に戻る。
		next unless @asakuno ~~ /$filename/;	# スマートマッチ演算子と正規表現検索の組み合わせ。
#		say $filename;
#			智博
#			朝来野智博
#			朝来野
		say "\t$filenameの削除結果：" . unlink $filename;
#				智博の削除結果：1
#				朝来野智博の削除結果：1
#				朝来野の削除結果：1
	}
	say "以下、ディレクトリ配下の確認。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
#		next if $filename =~ /^[.]/;	# 先頭がピリオドで始まる場合、先頭処理に戻る。
#		next unless @asakuno ~~ /$filename/;	# スマートマッチ演算子と正規表現検索の組み合わせ。
		say "\t" . $filename;	# 作成したファイルはないため、削除成功。
#				.
#				..
#				基礎知識用の勉強
#				version.pl
#				.DS_Store
#				.README.md.swp
#				README.md
#				応用知識用の勉強
#				helloWorld.pl
#				環境構築(インストール).md
#				Pythonで学ぶアルゴリズムの教科書 一生モノの知識と技術を身につける
	}
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
