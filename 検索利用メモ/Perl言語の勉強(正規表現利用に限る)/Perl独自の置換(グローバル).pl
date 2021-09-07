use v5.24;

my $helloworld = "asakuno";

my $name = "nameasakunotomohiroasakunotomohiroasakuno";
if ( $name =~ s/asakuno// ) {
	# asakuno削除後の結果。
	say $name;	# nametomohiroasakunotomohiroasakuno
}

my $name = "nameasakunotomohiroasakunotomohiroasakuno";
if ( $name =~ s/asakuno//g ) {
	# asakuno削除後の結果。
	say $name;	# nametomohirotomohiro
}

my $name = "nameasakunotomohiroasakunotomohiroasakuno";
if ( $name =~ s/(asakuno)/\($1\)/ ) {
	say $name;	# name(asakuno)tomohiroasakunotomohiroasakuno
}

my $name = "nameasakunotomohiroasakunotomohiroasakuno";
if ( $name =~ s/(asakuno)/\($1\)/g ) {
	say $name;	# name(asakuno)tomohiro(asakuno)tomohiro(asakuno)
}

print "以上。"
