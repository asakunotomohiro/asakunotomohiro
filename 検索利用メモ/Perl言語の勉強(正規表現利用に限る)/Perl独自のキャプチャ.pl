use v5.24;

my $helloworld = "asakuno";

# 以下、キャプチャの有効期限。
my $ret = $helloworld =~ m/kuno$/;
say "$&";	# 出力結果：kuno
say "$ret";	# 1

#	期待は、以下の検索結果を出して欲しい。
$ret = $helloworld =~ m/tomohiro/;
#	しかし、そもそもの検索対象に含まれていない単語検索をしたため、失敗した。
#	そのため、前の検索結果を出してきている。
say "$&";	# 出力結果：kuno
say "$ret";	# [空文字]

say "-" x 3 . "ここまで" . "-" x 50;

my $name = "nameasakunotomohiro";
if ( $name =~ m/(asakuno)/ ) {
	say $1;	# asakuno
}
if ( $name =~ m/(hoge)?(tomohiro)/ ) {
	say "$1：$2";	# ：tomohiro
}
# 以下、キャプチャしないが、グループ化する。
if ( $name =~ m/(?:hoge)?(tomohiro)/ ) {
	say "$1：$2";	# tomohiro：
	# 要は、検索作業の1つ目のグループをキャプチャしないため、1つ目にキャプチャするのが2つ目の括弧と言うことになる。
}

if ( $name =~ m/(?:hoge)?(tomohiro)/ ) {
	say "$1：$2";	# tomohiro：
	# 要は、キャプチャしないため、1つ目にキャプチャするのが2つ目の括弧と言うことになる。
}

# 以下、nオプション付きにより、グループ化するが、キャプチャしない状態にしている。
if ( $name =~ m/(hoge)?(tomohiro)/n ) {
	say "($1)：($2)/n";	# ()：()/n
}

# 以下、キャプチャに名前を付けている。
say "-" x 30 . "キャプチャに名前を付ける。";
say "まずは、名前なし処理。";
if ( $name =~ m/(hoge)?(tomohiro)/ ) {
	say "$1：$2";	# ：tomohiro
	# 検索作業の1つ目のグルーピングは、見つからないが、1つ目として数えられる。  
	# 何より、本来の目的は、人間が数える作業が発生していることを意味する。
}

#	名前を付ける。
say "名前付けの作業。";
$name = "nameasakunotomohirotomohiro朝来野智博tomohirohoge";
#if ( $name =~ m/.*(?<boo>hoge)?.*(?<tomohiro>tomohiro).*\g{boo}/ ) {
if ( $name =~ m/.*(?<boo>hoge)?.*(?<tomohiro>tomohiro).*\g{tomohiro}.*/ ) {
#if ( $name =~ m/.*(?<boo>hoge)?.*(?<tomohiro>tomohiro).*\g{tomohiro}\g{boo}?/ ) {
	say "名前無しキャプチャ：$1：$2";					# 名前無しキャプチャ：：tomohiro
	say "名前ありキャプチャ：$+{boo}：$+{tomohiro}";	# 名前ありキャプチャ：：tomohiro
	say "hogeをbooと言う名前でキャプチャ済み：$+{boo}"
	# 1つ目のhogeに名前をキャプチャしたが、2回目の利用には使えなかった(これは大変残念な結果だと思う)。
}

if ( $name =~ m/(?<name>e).*\1$/ ) {
	say "eを見つけた：$+{name}";	# 出力結果：eを見つけた：e
	say "\t名前付けなしの(\\1)検索時の再利用"
}

if ( $name =~ m/(?<name>e).*\g{name}$/ ) {
	say "eを見つけた：$+{name}";	# 出力結果：eを見つけた：e
	say "\t名前付けありの(\\g{name})検索時の再利用"
}

if ( $name =~ m/(?<name>e).*\k<name>$/ ) {
	say "eを見つけた：$+{name}";	# 出力結果：eを見つけた：e
	say "\t名前付けありの(別記法(\\k<name>)での)検索時の再利用"
}

if ( $name =~ m/(?<name>e).*\g{-1}$/ ) {
	say "eを見つけた：$+{name}";	# 出力結果：eを見つけた：e
	say "\t名前付けありの(相対後方参照での)検索時の再利用"
}

# 以下、Python式のキャプチャ(?P=LABEL)
if ( $name =~ m/(?P<name>e).*(?P=name)$/ ) {
	say "eを見つけた：$+{name}";	# 出力結果：eを見つけた：e
	say "\t名前付けありの(Python式での)検索時の再利用"
}


print "以上。"
