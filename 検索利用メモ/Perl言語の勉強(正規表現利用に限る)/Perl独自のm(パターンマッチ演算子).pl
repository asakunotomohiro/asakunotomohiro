use v5.24;

my $asakuno = "asakuno";

# 以下、検索の基礎(復習)
my $asakunotomohiro = "Hello World asakuno!";
my ($hello, $world, $asakuno) = $asakunotomohiro =~ m/(\S+) (\S+) (\S+)/;
say "$hello, $world, $asakuno";	# Hello, World, asakuno!

# 以下、区切り作業処理開始。
my $asakuno = "5 shout 3 word ⇒ Hello World, asakuno!";
#	以下、リストコンテキストとして値の代入。
my @words = $asakuno =~ m/([a-z]+)/;
#	以下、リストコンテキストとして表示。
say "@words";	# shout
	# グローバル修飾子を付けていないため、1つの単語しか抜き出せていない。

# 以下、やり直し。
my $asakuno = "5 shout 3 word ⇒ Hello World, asakuno!";
my @words = $asakuno =~ m/([a-z]+)/g;
say "@words";	# shout word ello orld asakuno
	# 大小文字区別なし修飾子を付けていないため、小文字の単語のみが抜き出されている。

# 以下、再度のやり直し。
my $asakuno = "5 shout 3 word ⇒ Hello World, asakuno!";
my @words = $asakuno =~ m/([a-z]+)/ig;
#	書籍では⇒my @words = ($asakuno =~ m/([a-z]+)/ig);
#	括弧を付けているな・・・何のためだっけ？
say "@words";	# shout word Hello World asakuno

# ハッシュ利用(抜き出す単語を一度に複数取得する場合)
my $asakuno = "5 shout 3 word Hello World, asakuno tomohiro!";
my %words = $asakuno =~ m/(\w+)\s+(\w+)/ig;

#	foreach my $key (keys(%words)) {
#		my $value = $words{$key};
#		say "$key: $value";
#	}

my $index = 1;
while (my($key, $value) = each(%words)) {
	say "$index: $key ---> $value";
	$index++;
}
# 以下、出力結果(順不同)：
#		5: shout
#		3: word
#		Hello: World
#		asakuno: tomohiro


print "以上。"
