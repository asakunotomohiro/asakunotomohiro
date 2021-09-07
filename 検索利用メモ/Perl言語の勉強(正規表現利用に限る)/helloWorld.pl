#!/usr/bin/perl -w

my $helloworld = "Hello World($^V).";
print $helloworld . "\n";	# Hello World(v5.18.4).

# 以下、"World"の文言がある場合に、出力する。
if ( $helloworld =~ /World/ ) {
	print "$helloworldに、/World/が一致した。" . "\n";
}

#	/〜/という表記は、m/〜/の略式表記。
#		そのため、mを付けるのであれば、ブロック記号は何でも良くなる。
if ( $helloworld =~ m{World} ) {
	print "$helloworldに、{World}が一致した。" . "\n";
}
if ( $helloworld =~ m'World' ) {
	print "$helloworldに、'World'が一致した。" . "\n";
}
#	他にも、()・<>・""・,,など。

#以下、正規表現を使うのは、宣言変数だけではない。
$_ = "\$_でのHello World($^V).";
if ( m|World| ) {
	print "$_に、|World|が一致した。" . "\n";
}
#	Perlerが好きな$_記号を使えば、そもそものif文条件部分がすっきりする(個人的には処理速度が落ちそうではあるが・・・)。


# ---- 以下、別の方法で検索する。 ----
if ( m|o.W| ) {	# スペース記号を.で補っている(ワイルドカード)。
	print "$_に、|o.W|が一致した。" . "\n";
}
#		ドット(.)は、改行を除く、あらゆる1個の文字にマッチする。

if ( m|hello| ) {	# Hが小文字になっているため、検索に掛からない。
	print "$_に、|hello|が一致した。" . "\n";
}
else {
	print "$_は検索に掛からない。" . "\n";
}
if ( m*(h|H)ello* ) {	# hまたはHにヒットすればいい。
	print "$_に、*(h|H)ello*が一致した。" . "\n";
}
if ( m*[hH]ello* ) {	# hまたはHにヒットすればいい。
	print "$_に、*[hH]ello*が一致した。" . "\n";
}
if ( m[hello]i ) {	# パターン部分の大小文字区別なし検索。
	print "$_に、[hello]iが一致した。" . "\n";
}
if ( m<
	hello	# 大小も区別なしの"hello"を探す。
	>xi ) {	# xにて、空白・タブを無視し、コメント記入を有効化している。
	print "$_に、<hello>xiが一致した。" . "\n";
}

# キャプチャグループでの検索。
if ( m,e(l)\1o, ) {	# \1と言うのは、直前の文字を繰り返している。
	# Helloの"ello"にヒットしている。
	print "$_に、,e(l)\1o,が一致した。" . "\n";
}
if ( m,e(l)o, ) {	# Helloにヒットしない。
	print "$_に、,e(l)\1o,が一致した。" . "\n";
}


print "-" x 3 . "ここまで正規表現(検索)" . "-" x 50 . "\n";
print "ここから置換" . "\n";

$helloworld = "Hello World($^V).";
print $helloworld . "\n";	# Hello World(v5.18.4).
my $kakkonashi = $helloworld =~ s/\(.*\)//;
print $helloworld . "($kakkonashi)\n";	# Hello World.(1)

$helloworld = "Hello World($^V).";
if ( $helloworld =~ s/(?<hello>^h.*d)\((?<ver>.*)\)/Perl-ver{$+{ver}}/i ) {
	# 置換成功により、以下を表示する。
	print $helloworld . "\n";	# Perl-ver{v5.18.4}.
}


print "-" x 3 . "ここまで正規表現(置換)" . "-" x 50 . "\n";

print "以上。"
