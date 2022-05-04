use v5.24;

my $helloworld = "Hello	 	World($^V).";

# 以下、xオプションにより、空白関係を無視する。
(my $one, my $two) = $helloworld =~ m/(\w*)\s*(\w*)/x;
say $one;	# Hello
say $two;	# World

say "-" x 30;

# 以下、変数にパターンを入れる。
my $patt = "\t*";
(my $one, my $two) = $helloworld =~ m/(\w*)$patt(\w*)/x;
say $one;	# [空文字列]
say $two;	# [空文字列]

say "-" x 30;

# 以下、変数にパターンを入れる。
my $patt = '\t*';
(my $one, my $two) = $helloworld =~ m/(\w*)$patt(\w*)/x;
say $one;	# Hello
say $two;	# [空文字列]

say "-" x 30;

# 以下、変数にパターンを入れる。
my $patt = qr/\t*/;
(my $one, my $two) = $helloworld =~ m/(\w*)$patt(\w*)/x;
say $one;	# Hello
say $two;	# [空文字列]


# だめだ。
#	分からない。

say "-" x 30;

# 以下、変数にパターンを入れる。
#my $patt = "\t*";
#(my $one, my $two) = $helloworld =~ m/(\w*)qr/$patt/(\w*)/x;	エラー：Scalar found where operator expected at Perl独自の逆スラッシュ.pl line 42, near "m/(\w*)qr/$patt"
#say $one;	# Hello
#say $two;	# [空文字列]


say "-" x 30;

# 以下、変数にパターンを入れる。
my $patt = "\t*";
(my $one, my $two) = $helloworld =~ m/(\w*)qr#$patt#(\w*)/x;	# だめだろうね。
say $one;	# [空文字列]
say $two;	# [空文字列]



print "以上。"
