use v5.24;

my $helloworld = "Hello World($^V).";
print $helloworld . "\n";	# Hello World(v5.18.4).

# 以下、"World"の文言がある場合に、出力する。
if ( $helloworld =~ m{W.{3}d} ) {
	print "$helloworldに、{W.{3}d}が一致した。(マッチ文字列：$&)" . "\n";
	# 出力結果：Hello World(v5.34.0).に、{W.{3}d}が一致した。(マッチ文字列：World)
}

if ( $helloworld =~ m{W.{3}d} ) {
	print "$helloworldに、{W.{3}d}が一致した。(マッチ部分より前の文字列：$`)" . "\n";
	# 出力結果：Hello World(v5.34.0).に、{W.{3}d}が一致した。(マッチ部分より前の文字列：Hello )
}

if ( $helloworld =~ m{W.{3}d} ) {
	print "$helloworldに、{W.{3}d}が一致した。(マッチ部分より後の文字列：$')" . "\n";
	# 出力結果：Hello World(v5.34.0).に、{W.{3}d}が一致した。(マッチ部分より後の文字列：(v5.34.0).)
}

if ( $helloworld =~ m{W.{3}(d)} ) {
	print "$helloworldに、{W.{3}(d)}が一致した。(パターン1つ目：$1)" . "\n";
	# 出力結果：Hello World(v5.34.0).に、{W.{3}(d)}が一致した。(パターン1つ目：d)
}

if ( $helloworld =~ m{(W.).{2}d} ) {
	print "$helloworldに、{(W.).{2}d}が一致した。(マッチ最後の部分文字列：$+)" . "\n";
	# 出力結果：Hello World(v5.34.0).に、{(W.).{2}d}が一致した。(マッチ最後の部分文字列：Wo)
	#	これは、キャプチャすることが前提になる。
	#	このマッチしたテキストは、%+に記録される。それを抜き出す専用変数が$+になる。
}

if ( $helloworld =~ m{W.{3}d} ) {
	print "$helloworldに、{W.{3}d}が一致した。(全体マッチと部分マッチの開始オフセットの開始オフセットのリスト：@-)" . "\n";
	# 出力結果：Hello World(v5.34.0).に、{W.{3}d}が一致した。(全体マッチと部分マッチの開始オフセットの開始オフセットのリスト：6)
}

if ( $helloworld =~ m{W.{3}d} ) {
	print "$helloworldに、{W.{3}d}が一致した。(対応終了オフセットのリスト：@+)" . "\n";
	# 出力結果：Hello World(v5.34.0).に、{W.{3}d}が一致した。(対応終了オフセットのリスト：11)
}


print "以上。"
