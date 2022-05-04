use v5.24;

my $words = "Paris in The The The The spring.";
$words =~ s/\b(\w+) \1\b/$1/gi;
say $words;	# Paris in The The spring.

my $words = "Paris in The The The The spring.";
while ($words =~ s/\b(\w+) \1\b/$1/gi) {};
say $words;	# Paris in The spring.

say "-" x 30;
say "以下、本題。";

#	成功しているぞ!?
my $words = "Paris in The The The The spring.";
while ($words =~ s/\b(\w+) (?=\1\b)//gi) {};
say $words;	# Paris in The spring.
#	成功理由は、whileを使ったから。

# 以下失敗(全く変化なし)。
my $words = "Paris in The The The The spring.";
while ($words =~ s/\b(\w+) (?= \1\b)//gi) {};
say $words;	# Paris in The The The The spring.

my $words = "Paris in The The The The spring.";
while ($words =~ s/\b(\w+) \s (?= \1\b)//gi) {};
say $words;	# Paris in The The The The spring.

say "-*" x 30 . "-";

# 以下も成功しているが、こちらはwhileを使わずに意図した結果が出てきた。
my $words = "Paris in The The The The spring.";
$words =~ s/\b(\w+) \s (?=\1\b)//gxi;
say $words;	# Paris in The spring.


print "以上。"
