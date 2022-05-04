use v5.24;

my $words = "Paris in The The The The spring.";
while ($words =~ m/t/gi) {
	printf "t単語を見つけた：%d\n", pos($words)-1;
	# 0から数える。
	# t単語を見つけた：9
	# t単語を見つけた：13
	# t単語を見つけた：17
	# t単語を見つけた：21
};
while ($words =~ m/i/gi) {
	printf "単語iを見つけた：%d\n", pos($words)-1;
	# 0から数える。
	# 単語iを見つけた：3
	# 単語iを見つけた：6
	# 単語iを見つけた：28
};


# 以下、上記の検索に加えて、cオプション(continue)を付ける。
my $words = "Paris in The The The The spring.";
while ($words =~ m/t/gic) {
	printf "t単語を見つけた：%d\n", pos($words)-1;
	# 0から数える。
	# t単語を見つけた：9
	# t単語を見つけた：13
	# t単語を見つけた：17
	# t単語を見つけた：21
};
while ($words =~ m/i/gi) {
	printf "単語iを見つけた：%d\n", pos($words)-1;
	# 前回の検索から探し出す。
	# 単語iを見つけた：28	←☆当然これは0から数えた場所にある。
};


print "以上。"
