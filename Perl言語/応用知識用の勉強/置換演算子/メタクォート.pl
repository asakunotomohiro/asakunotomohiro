use v5.24;

sub asakuno{
	$_ = shift;
	my $asakuno = $_;
	say "置換前：$_";
	#if( s/asa(kuno/tomohiro/ ) {
	#	Unmatched ( in regex; marked by <-- HERE in m/asa( <-- HERE kuno/ at メタクォート.pl line 5.

	if( s/\Qasa(kuno/tomohiro/ ) {
		say "置換後：$_";
	}
	else{
		say "検索に掛からず($_)。";
	}
	$_ = $asakuno;
	say "-" x 30;

	my $tomohiro = 'asa(kuno';	# 検索文字列を変数に入れる。
	#if( s/$tomohiro/tomohiro/ ) {
	#	Unmatched ( in regex; marked by <-- HERE in m/asa( <-- HERE kuno/ at メタクォート.pl line 19.
	say "置換前：$_";
	if( s/\Q$tomohiro/tomohiro/ ) {
		say "置換後：$_";
	}
	else{
		say "検索に掛からず($_)。";
	}
	$_ = $asakuno;
	say "-" x 30;

	my $tomohiro = quotemeta('asa(kuno');	# 検索文字列を変数に入れる(メタクォート付き)。
	say "置換前：$_";
	if( s/$tomohiro/tomohiro/ ) {	# ここで、メタクォートを用いず。
		say "置換後：$_";
	}
	else{
		say "検索に掛からず($_)。";
	}
}
&asakuno("asa(kuno");
#		置換前：asa(kuno
#		置換後：tomohiro


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
