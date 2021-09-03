use v5.24;

my @asakuno = (20210901, 20210902, );
my $tomohiro = 20210901;

# foreachを使った繰り返し。
foreach my $tomohiro ( @asakuno ) {
	say $tomohiro;	# 20210901
					# 20210902
}

# forを使った繰り返し。
#	他のプログラミング言語ならば、これが一般的。
my $ii;
say "for文実行";
for ( ; $ii < 3; $ii++ ) {
	say $ii;	# [空文字]
				# 1
				# 2
}
say "for文終了";
say $ii;	# 3

for ( $ii = 0 ; $ii < 3; $ii++ ) {
	say $ii;	# 0
				# 1
				# 2
}

# リストからのforでの繰り返し。
for ( 1..10 ) {
	say $_;	# 1
			# 2
			# 3
			# 4
			# 5
			# 6
			# 7
			# 8
			# 9
			# 10
}

# 以下、foreachとどう違う？
my @asakuno = (20210901, 20210902, );
for (@asakuno) {
	say $_	# 20210901
			# 20210902
}

# 以上。
