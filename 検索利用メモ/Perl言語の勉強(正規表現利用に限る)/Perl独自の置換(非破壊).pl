use v5.24;

my $helloworld = "朝来野智博";

my $asakuno = "nameasakunotomohiroasakunotomohiroasakuno";
if ( (my $tomohiro = $asakuno) =~ s/asakuno//g ) {
	# asakuno削除後の結果。
	say "asakuno：$asakuno";	# asakuno：nameasakunotomohiroasakunotomohiroasakuno
	say "tomohiro：$tomohiro";	# tomohiro：nametomohirotomohiro
}

say "-" x 50;

$asakuno = "nameasakunotomohiroasakunotomohiroasakuno";
if ( my $tomohiro = $asakuno =~ s/asakuno//gr ) {
	# asakuno削除後の結果。
	say "asakuno：$asakuno";	# asakuno：nameasakunotomohiroasakunotomohiroasakuno
	say "tomohiro：$tomohiro";	# tomohiro：nametomohirotomohiro
}

say "-" x 50;

$asakuno = "nameasakunotomohiroasakunotomohiroasakuno";
# 以下、r修飾子を付けない場合や非破壊置換をしない場合、置換回数が$tomohiroに代入され、置換結果が$asakunoに置き換えられて代入される。  
if ( my $tomohiro = $asakuno =~ s/asakuno//g ) {
	# asakuno削除後の結果。
	say "asakuno：$asakuno";	# asakuno：nametomohirotomohiro
	say "tomohiro：$tomohiro";	# tomohiro：3
}

print "以上。"
