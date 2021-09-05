use v5.24;

my $helloworld = "Hello
World
(
$^V
)
こんにちは、World
.";

# 以下、"World"の文言が行頭にある場合に、出力する。
if ( $helloworld =~ m:^W.{3}d:m ) {
	say "検索語:^W.{3}d:(マッチ文字列：$&)";
	# 出力結果：検索語:^W.{3}d:(マッチ文字列：World)
}

if ( $helloworld =~ m|^W.{3}d| ) {
	say "検索語|^W.{3}d|(マッチ文字列：$&)";
	# 出力結果：
}
else {
	say "検索に掛からず(検索語|^W.{3}d|)。"
}

if ( $helloworld =~ m{\AW.{3}d} ) {
	say "検索語{\\AW.{3}d}(マッチ文字列：$&)";
	# 出力結果：
}
else {
	say "検索に掛からず(検索語{\\AW.{3}d})。"
}

if ( $helloworld =~ m{\AH.{3}o} ) {
	say "検索語{\\AH.{3}o}(マッチ文字列：$&)";
	# 出力結果：検索語{\AH.{3}o}(マッチ文字列：Hello)
}

if ( $helloworld =~ m<\AH.{3}o>m ) {
	say "検索語<\\AH.{3}o>m(マッチ文字列：$&)";
	# 出力結果：検索語<\AH.{3}o>m(マッチ文字列：Hello)
}

if ( $helloworld =~ m&^H.{3}o&m ) {
	say "検索語&\\AH.{3}o&(マッチ文字列：$&)";
	# 出力結果：検索語&\AH.{3}o&m(マッチ文字列：Hello)
}

if ( $helloworld =~ m#^H.{3}o# ) {
	say "検索語#\\AH.{3}o#(マッチ文字列：$&)";
	# 出力結果：検索語#\AH.{3}o#(マッチ文字列：Hello)
}

say "-" x 50;

# 以下、"World"の文言が行末にある場合に、出力する。
if ( $helloworld =~ m@W.{3}d$@m ) {
	say "検索語\@W.{3}d$\@(マッチ文字列：$&)(マッチ前文字列：$`)";
	# 出力結果：検索語@W.{3}d@(マッチ文字列：World)(マッチ前文字列：Hello
	#           )
}

if ( $helloworld =~ m=W.{3}d$=gm ) {
	say "検索語=W.{3}d\$=(マッチ文字列：$&)";
	# 出力結果：検索語=W.{3}d$=(マッチ文字列：World)
}

if ( $helloworld =~ m-W.{3}d$-gcm ) {
	say "検索語-W.{3}d\$-(マッチ文字列：$&)";
	# 出力結果：検索語-W.{3}d$-(マッチ文字列：World)
}

if ( $helloworld =~ m+W.{3}d$+s ) {
	say "検索語+W.{3}d\$+(マッチ文字列：$&)";
	# 出力結果：
}
else {
	say "検索に掛からない(改行を無視して1行として認識しているからだろう)。"
}


print "以上。"
