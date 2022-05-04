use v5.24;

my $helloworld = "asakuno";

chomp(my $date = localtime);
say $date;	# Tue Sep  7 15:09:13 2021
chomp(my $date = `date`);
say $date;	# 2021年 9月 7日 火曜日 15時09分41秒 JST

# 以下の変数に値がある場合、引数に与えられたファイルに指定した拡張子を付けてバックアップする。
$^I = ".bak";
#	asakuno.pl
#		↓$^I
#	asakuno.pl.bak
#	正確に言えば、ファイル名を変更するのであってコピーするのではない。
#	変更したファイルを以下の置換プログラムで処理するときに、出力先を$^Iのないファイルに出力するということ。

while (<>){
	s/\AAuthor:.*/Author: asakuno/;	# 作業者名の変更。
	s/\APhone:.*\n//;				# 電話番号行削除。
	s/\ADate:.*/Date: $date/;		# 日付を当日にする。
	print;
}

print "以上。"
