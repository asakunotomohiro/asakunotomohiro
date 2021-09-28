use v5.24;

my @asakuno = (1..10);

# 上記の格納方法では、1から1づつ増加し、10まで格納される。
say "@asakuno";	# 1 2 3 4 5 6 7 8 9 10

@asakuno = (1.7..5.7);	# 小数点部分が切り捨てられる。
say "@asakuno";	# 1 2 3 4 5

@asakuno = (5..1);	# 増加する使い方のみできるため、空リストが生成される。
say "@asakuno";	# 空

my $number10 = 10;
my $number20 = 20;
@asakuno = ($number10..$number20);
say "@asakuno";	# 10 11 12 13 14 15 16 17 18 19 20

# 以下、文字の扱い。
my $kakko = ")(";
say $kakko;
my @string = qw! asa kuno tomo hiro !;
say "@string";	# asa kuno tomo hiro

#@string = qw# @string $kakko #;
@string = ( @string, $kakko );
say "@string";	# asa kuno tomo hiro )(

# 任意のデリミタ利用
my @string = qw! asa kuno tomo hiro !;
say "@string";	# asa kuno tomo hiro
@asakuno = (@string, undef, $kakko);
say "@asakuno";	# asa kuno tomo hiro  )(
	# 意図的に"undef"を入れている(これ以外の代入方法はないはず)。

say "-" x 30;
@string = ();
@asakuno = (1..5);	# 増加する使い方のみできる。
say "@string, @asakuno";	# , 1 2 3 4 5
@string = @asakuno;
$asakuno[0] = 99;
say "@string, @asakuno";	# 1 2 3 4 5, 99 2 3 4 5
	# 配列データはコピーされる(参照ではない)。

# {}などのデリミタの使い分け。
@asakuno = qw{ /usr/hoge /home/bar/ /\\boo };
say "$asakuno[0]";	# /usr/hoge
say "$asakuno[1]";	# /home/bar/
say "$asakuno[2]";	# /\boo


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
