use v5.24;

my @asakuno = ( 1..4 );
my @tomohiro = ("朝来野", "智博");
my $ten;
say "@asakuno";	# 1 2 3 4

# 配列からの取り出し(取り出し後は、配列からなくなる)。
say "以下、配列からの取り出し。";
$ten = pop(@asakuno);
say "@asakuno";	# 1 2 3
say "$ten";		# 4
$ten = pop @asakuno;
say "@asakuno";	# 1 2
say "$ten";		# 3

say "-" x 30;
pop(@asakuno);
say "@asakuno";	# 1
say "$ten";		# 3

say "-" x 30;
pop(@asakuno);
say "@asakuno";	# [空文字undef]
say "$ten";		# 3

# 追加方法。
say "-" x 30;
say "以下、配列への追加。";
my @asakuno = ( 1..4 );
say "@asakuno";	# 1 2 3 4

$ten = pop(@asakuno);
say "@asakuno";	# 1 2 3
say "$ten";		# 4

push(@asakuno, 20210902);
say "@asakuno";	# 1 2 3 20210902
say "$ten";		# 4

push(@asakuno, "asakuno");
say "@asakuno";	# 1 2 3 20210902 asakuno

# 配列を追加することもできる。
say "以下、配列に配列を追加。";
push(@asakuno, @tomohiro);
#	これも可　⇒　push(@asakuno, "@tomohiro");	←☆ダブルクォーテーションで括る。
say "@asakuno";	# 1 2 3 20210902 asakuno 朝来野 智博

# リスト追加も可。
say "以下、配列にリストを追加。";
push(@asakuno, 5..8);
say "@asakuno";	# 1 2 3 20210902 asakuno 朝来野 智博 5 6 7 8

push(@asakuno, 5..8, "tomohiro", "朝", "来", "野", "智", "博");
say "@asakuno";	# 1 2 3 20210902 asakuno 朝来野 智博 5 6 7 8 5 6 7 8 tomohiro 朝 来 野 智 博

say "-" x 30;
# 無駄な設定
my $asakuno = 20210902;
say $asakuno;	# 20210902
#$tomohiro = pop $asakuno;	# Experimental pop on scalar is now forbidden at 配列(正規).pl line 55, near "$asakuno)"
#push($asakuno, 99999);	# Experimental push on scalar is now forbidden at 配列(正規).pl line 56, near "99999)"

# 無駄というかエラーになる。
#	スカラー変数には、利用できない。

say "-" x 30;



#------------------------------------------------------------------------------------------------
say "-x" x 30 . "-";
say "配列にリストで値を代入する。";
my @asakuno = ( 1..4 );
say "@asakuno";	# 1 2 3 4

$ten = shift @asakuno;
say "@asakuno";	# 2 3 4
say "$ten";		# 1

$ten = shift @asakuno;
say "@asakuno";	# 3 4
say "$ten";		# 2

unshift @asakuno, 20210903;
say "@asakuno";	# 20210903 3 4
say "$ten";		# 2

unshift @asakuno, 10..13;
say "@asakuno";	# 10 11 12 13 20210903 3 4
say "配列のスライスとして置き換え。";
@asakuno[2, 3, 5] = (88, 99, 20211118);
say "@asakuno";	# 10 11 88 99 20210903 20211118 4

say "配列のスライス。";
say "@asakuno[1, 4, 6]";	# 11 20210903 4

#------------------------------------------------------------------------------------------------
say "-*" x 30 . "-";
say "以下、配列にリストで値を代入後に、スプライスで変更する。";

my @asakuno = ( 1..10 );
say "@asakuno";	# 1 2 3 4 5 6 7 8 9 10

$ten = splice @asakuno, 2;
say "@asakuno";	# 1 2
say "$ten";		# 10


# 以下、第2引数までの利用。
say "-" x 30 . "スプライス関数の結果を変数に代入";
my @asakuno = ( 1..10 );
say "@asakuno";	# 1 2 3 4 5 6 7 8 9 10
my $tomohiro = splice @asakuno, 2;
say "@asakuno";		# 1 2
say "$tomohiro";	# 10


# 以下、第2引数までの利用。
say "-" x 30 . "スプライス関数の結果を配列に代入";
my @asakuno = ( 1..10 );
say "@asakuno";	# 1 2 3 4 5 6 7 8 9 10
@tomohiro = splice @asakuno, 2;
say "@asakuno";		# 1 2
say "@tomohiro";	# 3 4 5 6 7 8 9 10


# 以下、第3引数の利用。
my @asakuno = ( 1..10 );
say "@asakuno";	# 1 2 3 4 5 6 7 8 9 10
@tomohiro = splice @asakuno, 2, 3;
say "@asakuno";		# 1 2 6 7 8 9 10
say "@tomohiro";	# 3 4 5


# 以下、第4引数の利用(置換)。
my @asakuno = ( 1..10 );
say "@asakuno";	# 1 2 3 4 5 6 7 8 9 10
@tomohiro = splice @asakuno, 2, 3, ("朝来野", "智博");
say "@asakuno";		# 1 2 朝来野 智博 6 7 8 9 10
say "@tomohiro";	# 3 4 5

# 以下、第4引数の利用(置換)。
my @asakuno = ( 1..10 );
say "@asakuno";	# 1 2 3 4 5 6 7 8 9 10
@tomohiro = splice @asakuno, 2, 3, 50..55;
say "@asakuno";		# 1 2 50 51 52 53 54 55 6 7 8 9 10
say "@tomohiro";	# 3 4 5

# 以下、第4引数の利用(挿入)。
my @asakuno = ( 1..5 );
say "@asakuno";	# 1 2 3 4 5
@tomohiro = splice @asakuno, 2, 0, ("asakuno", "tomohiro");
say "@asakuno";		# 1 2 asakuno tomohiro 3 4 5
say "@tomohiro";	# [空文字]

# 以下、引数無し。
my @asakuno = ( 1..15 );
say "@asakuno";	# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
@tomohiro = splice @asakuno;
say "@asakuno";		# [空文字]
say "@tomohiro";	# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
