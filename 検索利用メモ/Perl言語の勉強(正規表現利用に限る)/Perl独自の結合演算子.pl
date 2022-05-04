use v5.24;

my $helloworld = "Hello World($^V).";
print $helloworld . "\n";	# Hello World(v5.18.4).

# 以下、"World"の文言がある場合に、出力する。
my $ret = $helloworld =~ /World/;
#			検索結果をret変数に代入している。
if ( $ret ) {
	print "$helloworldに、/World/が一致した。$ret" . "\n";
	# 出力結果：Hello World(v5.18.4).に、/World/が一致した。1
}


print "以上。"
