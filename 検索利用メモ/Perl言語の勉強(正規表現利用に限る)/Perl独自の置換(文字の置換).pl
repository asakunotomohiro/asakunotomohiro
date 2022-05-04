use v5.24;

my $helloworld = "asakunotomohiro";

#
# 正規表現の"文字の解釈フラグ"で説明したことが今回の大小文字変換でも当てはまる。
#	小文字に変換する場合、Unicode文字であれば、大文字に戻せない可能性がある。
#	比較する場合もUnicodeとして比較しない可能性があり、そのときは`\F`を変数前に付けることで回避できる。
#	変換する場合は、気をつけること(P164)。
#

# 以下、\Uを使うことで、大文字に変換する。
my $asakuno = "nameasakunotomohiroasakunotomohiroasakuno";
if ( $asakuno =~ s/(asakuno)/\U\1/g ) {
	say $asakuno;	# nameASAKUNOtomohiroASAKUNOtomohiroASAKUNO
}

# 以下、\uを使うことで、次の1文字だけが大文字になる。
$asakuno = "nameasakunotomohiroasakunotomohiroasakuno";
if ( $asakuno =~ s/(asakuno)/\u\1/g ) {
	say $asakuno;	# nameAsakunotomohiroAsakunotomohiroAsakuno
}


# 以下、\Lを使うことで、小文字に変換する。
$asakuno = "NAMEASAKUNOTOMOHIROASAKUNOTOMOHIROASAKUNO";
if ( $asakuno =~ s/(ASAKUNO)/\L\1/g ) {
	say $asakuno;	# NAMEasakunoTOMOHIROasakunoTOMOHIROasakuno
}

# 以下、\lを使うことで、次の1文字だけが小文字になる。
$asakuno = "NAMEASAKUNOTOMOHIROASAKUNOTOMOHIROASAKUNO";
if ( $asakuno =~ s/(ASAKUNO)/\l\1/g ) {
	say $asakuno;	# NAMEaSAKUNOTOMOHIROaSAKUNOTOMOHIROaSAKUNO
}

# 以下、\u\Lを使うことで、パターン文字を全て小文字にするが、先頭1文字のみを大文字にする。
$asakuno = "NAMEASAKUNOTOMOHIROASAKUNOTOMOHIROASAKUNO";
if ( $asakuno =~ s/(ASAKUNO)/\u\L\1/g ) {
	say $asakuno;	# NAMEAsakunoTOMOHIROAsakunoTOMOHIROAsakuno
}

# 以下、すべてが小文字になってしまった(パターン文字のみ)。
$asakuno = "NAMEASAKUNOTOMOHIROASAKUNOTOMOHIROASAKUNO";
if ( $asakuno =~ s/(ASAKUNO)/\l\u\L\1/g ) {
	say $asakuno;	# NAMEasakunoTOMOHIROasakunoTOMOHIROasakuno
}


print "以上。"
