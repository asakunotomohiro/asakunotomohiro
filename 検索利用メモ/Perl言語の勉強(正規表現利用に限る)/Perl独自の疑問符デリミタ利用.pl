use v5.24;

# そもそもこのファイルの中身は何？
open DICT, "/usr/dict/words" or die "Can't open words: $!\n";

my $first;
my $last;
while (<DICT>) {
	$first = $1 if m?World?;
	$last = $1 if m/World/;
}

# 当たり前だが、意図しない結果が出てきた(ファイルが開けないのは分かっているのだから意図した結果ではあるが・・・)。
say $first;
say $last;



print "以上。"
