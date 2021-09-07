use v5.24;

my $helloworld = "朝来野智博";
my $asakuno = "(asakuno)tomohiro";

my $tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
if ( $tomohiro =~ s/asakuno//g ) {
	say "tomohiro：$tomohiro";	# tomohiro：nametomohirotomohiro
}

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$asakuno = "(asakuno)tomohiro";
#if ( $tomohiro =~ s/(asakuno//g ) {	# Unmatched ( in regex; marked by <-- HERE in m/( <-- HERE asakuno/ at Perl独自の置換(メタクォート).pl line 12.
#if ( $asakuno =~ s/\Q(asakuno//g ) {	# Unmatched ) in regex; marked by <-- HERE in m/) <-- HERE tomohiro/ at 〜
#if ( $asakuno =~ s/\Q(asakuno//g ) {
#	say "\Q(asakuno：$asakuno";	# \(asakuno??\?\)tomohiro
#}


# \Q
#	これはメタクォートと言い、メタキャラクタをすべてクォートする役割を持っている。
#	クォートするとはどういう意味？

$asakuno = "(asakuno)tomohiro";
if ( $asakuno =~ s/\Q(\Easakuno//g ) {
	say "\\Q(\\Easakuno：$asakuno";	# \Q(\Easakuno：)tomohiro
}

if ( $asakuno =~ s/\Q(asakuno)\E//g ) {
	say "\\Q(asakuno)\\E：$asakuno";	# 出力なし。
}


# 以下、変数利用。
$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$asakuno = "(asakuno)tomohiro";
if ( $tomohiro =~ s/$asakuno//g ) {	# 
	# なぜに変数内の括弧が無視される？
	say "置換成功(変数利用)：$tomohiro";	# 置換成功(変数利用)：nameasakuno
}
else {
	say "置換失敗(変数利用)：$tomohiro";	# 
}

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$asakuno = "(asakuno)tomohiro";
if ( $tomohiro =~ s/\Q$asakuno//g ) {
	say "\\Q(置換成功)：$tomohiro";	# 
}
else {
	# 変数内の括弧が無視されていないから(だから置換に失敗する)。
	say "\\Q(置換失敗)：$tomohiro";	# \Q置換失敗\E：nameasakunotomohiroasakunotomohiroasakuno
}

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$asakuno = "(asakuno)tomohiro";
if ( $tomohiro =~ s/$asakuno\E//g ) {
	# これは、末尾の\Eが有効に働いていないから置換が成功している(変数内の括弧が有効化されていないことを意味しているため、そもそも失敗していることになる)。
	say "(置換成功)\\E：$tomohiro";	# (置換成功)\E：nameasakuno
	# 末尾の\Eは、\Qの開始をせき止めるためのものなのであって、有効無効という話ではない。
}
else {
	say "(置換失敗)\\E：$tomohiro";	# 
}

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$asakuno = "(asakuno)tomohiro";
if ( $tomohiro =~ s/\Q$asakuno\E//g ) {
	say "\\Q(置換成功)\\E：$tomohiro";	# 
}
else {
	say "\\Q(置換失敗)\\E：$tomohiro";	# 置換失敗：nameasakunotomohiroasakunotomohiroasakuno
}

say "-" x 30 . "以下、検証作業" . "-" x 30;
say "検証できていなかった。クォートの意味を理解していなかった。以下の動きで、記号を無効化するということを理解した。";

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$asakuno = "(asakuno)(tomohiro)";
if ( $tomohiro =~ s/$asakuno/$2/g ) {
	say "(削除及び置換成功)QEなし：$tomohiro";	# (削除及び置換成功)QEなし：nametomohirotomohiroasakuno
}
else {
	say "(削除及び置換失敗)QEなし：$tomohiro";	# 
}

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$asakuno = "(asakuno)(tomohiro)";
if ( $tomohiro =~ s/\Q$asakuno/$2/g ) {
	say "\\Q(削除及び置換成功)：$tomohiro";	# 
}
else {
	say "\\Q(削除及び置換失敗)：$tomohiro";	# \Q(削除及び置換失敗)：nameasakunotomohiroasakunotomohiroasakuno
}

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$asakuno = "(asakuno)(tomohiro)";
if ( $tomohiro =~ s/\Q$asakuno\E/$2/g ) {
	say "\\Q(削除及び置換成功)\\E：$tomohiro";	# 
}
else {
	say "\\Q(削除及び置換失敗)\\E：$tomohiro";	# \Q(削除及び置換失敗)\E：nameasakunotomohiroasakunotomohiroasakuno
}

say "-" x 30 . "以下、本格検証作業" . "-" x 30;

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$asakuno = "(asakuno)(tomohiro)";
say "以下、メタクォートなしでの括弧付きを含む変数でのパターン作業実施。";
if ( $tomohiro =~ s/name$asakuno/$2/g ) {
	say "(削除及び置換成功)QEなし：$tomohiro";	# (削除及び置換成功)QEなし：tomohiroasakunotomohiroasakuno
	say "\t実行結果の予想は、\"tomohirotomohioro\"になると思っていた。";
}
else {
	say "(削除及び置換失敗)QEなし：$tomohiro";	# 
}

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$tomohiro =~ s/name(asakuno)(tomohiro)/$2/g;
say $tomohiro;	# tomohiroasakunotomohiroasakuno
say "検索パターンに一致したものを利用する・・・(前半部分捨てたつもりなのだが・・・)。";

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$tomohiro =~ s/(tomohiro)/$1/g;
say $tomohiro;	# nameasakunotomohiroasakunotomohiroasakuno

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$tomohiro =~ s/.*(tomohiro).*/$1/g;
say $tomohiro;	# tomohiro

say "-" x 30 . "以下、書籍内容の動作確認" . "-" x 30;
$_ = "asakuno tomohiro asakunotomohiro";
s/(\w+) (\w+)/$2, $1/;
say $_;	# tomohiro, asakuno asakunotomohiro

s/(\w+), (\w+) (\w+)/|$2|/;
say $_;	# |asakuno|

say "\tぬぅ〜ん。捨てる場合は、検索にヒットさせる必要があるのか・・・。";
say "そして、以下、前半を捨てているはずなのに、なぜ捨てられない？";

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$tomohiro =~ s/name(asakuno)(tomohiro)/$2/g;
say $tomohiro;	# tomohiroasakunotomohiroasakuno
say "原因：パターン間違いだった。";

$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$tomohiro =~ s/name(?<asakunotomohiro>(?<asakuno>asakuno)(?<tomohiro>tomohiro))+/$+{tomohiro}/g;
say $tomohiro;	# tomohiroasakuno
say "\t惜しい。そして、これ以上は、いいように検索できない。";

say "-" x 30 . "以下、本格検証作業" . "-" x 30;


$tomohiro = "nameasakunotomohiroasakunotomohiroasakuno";
$asakuno = "(tomohiro)";
say "以下、メタクォートなしでの括弧付きを含む変数でのパターン作業実施。";
if ( $tomohiro =~ s/$asakuno//g ) {
	say "(削除及び置換成功)QEなし：$tomohiro";	# (削除及び置換成功)QEなし：nameasakunoasakunoasakuno
}

$tomohiro = "nameasakunotomohiro(asakuno)tomohiroasakuno";
$asakuno = "(asakuno)";
say "以下、メタクォートなしでの括弧付きを含む変数でのパターン作業実施。";
if ( $tomohiro =~ s/$asakuno//g ) {
	say "(削除及び置換成功)QEなし(括弧付き)：$tomohiro";	# (削除及び置換成功)QEなし(括弧付き)：nametomohiro()tomohiro
}

$tomohiro = "nameasakunotomohiro(asakuno)tomohiroasakuno";
$asakuno = "\Q(asakuno)";
say "以下、メタクォートありでの括弧付きを含む変数でのパターン作業実施。";
if ( $tomohiro =~ s/$asakuno//g ) {
	say "\\Q(削除及び置換成功)(括弧付き)：$tomohiro";	# \Q(削除及び置換成功)(括弧付き)：nameasakunotomohirotomohiroasakuno
}

$tomohiro = "nameasakunotomohiro(asakuno)tomohiroasakuno";
$asakuno = "\Q(asakuno)\E";
say "以下、メタクォートありでの括弧付きを含む変数でのパターン作業実施。";
if ( $tomohiro =~ s/$asakuno//g ) {
	say "\\Q(削除及び置換成功)\\E(括弧付き)：$tomohiro";	# \Q(削除及び置換成功)\E(括弧付き)：nameasakunotomohirotomohiroasakuno
	say "\t今回の\\\Eは意味が無いため、上の実行結果と同じになっている。";
}
say "☆とりあえず、上記の実行結果がメタクォートありの正しい使い方なのだろう☆";

$tomohiro = "nameasakunotomohiro(asakuno)tomohiroasakuno";
$asakuno = "\Q(asakuno)\E";
say "以下、メタクォートありでの括弧付きを含む変数でのパターン作業実施。";
if ( $tomohiro =~ s/$asakuno/()/g ) {
	say "\\Q(削除及び置換成功)\\E：$tomohiro";	# \Q(削除及び置換成功)\E(括弧付き)：nameasakunotomohiro()tomohiroasakuno
	say "\t今回は、括弧を残すようにした。";
}


print "以上。"
