use v5.24;

my $words = "Paris in The The The The spring.";
$words =~ s/\b(\w+) \1\b/$1/gi;
#	1度のみ繰り返すため、"The The"が1つになり、その後ろの"The The"も1つになる？だから"The The"という結果が出てくる？
say $words;	# Paris in The The spring.

my $words = "Paris in The The The The spring.";
while ($words =~ s/\b(\w+) \1\b/$1/gi) {};
say $words;	# Paris in The spring.
#	愚痴：whileの{}不要なのだが、どうにかならなかったのかな。


print "以上。"
