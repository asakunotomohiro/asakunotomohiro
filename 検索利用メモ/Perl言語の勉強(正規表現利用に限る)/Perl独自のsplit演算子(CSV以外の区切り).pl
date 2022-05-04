use v5.24;

my $asakuno = "asakuno";

my @asakuno = split /:/, "asa:kuno:::tomo:hiro:::";
say "@asakuno";	# asa kuno   tomo hiro
#	最後の:::は、区切りとして無視される。
#	そして、間の:::は、区切られている。

my @asakuno = split /:/, ":::asa:kuno:tomo:hiro:::";
say "@asakuno";	#    asa kuno tomo hiro
#	最後の:::は、区切りとして無視される。
#	しかし、先頭の:::は、認識される(空文字列になる)。

my @asakuno = split /:/, "asa:kuno:tomo:hiro:::", -1;
say "@asakuno";	# asa kuno tomo hiro   
#	最後の:::は、第3引数への-1指定により、区切りとして無視されなくなった。

my @asakuno = split /\s+/, "   asa     kuno tomo	hiro";
say "@asakuno";	#  asa kuno tomo hiro
#	連続の空白文字を1つにまとめた(asaの前にスペース区切りの空文字列がある)。

$_ = "    asa     kuno tomo	hiro";
my @asakuno = split;
say "@asakuno";	# asa kuno tomo hiro
#	指定しなければ、$_の内容を空白文字で分割する。
#	ただし、asaの前にスペース区切りの空文字列が切り捨てられる。

print "以上。"
