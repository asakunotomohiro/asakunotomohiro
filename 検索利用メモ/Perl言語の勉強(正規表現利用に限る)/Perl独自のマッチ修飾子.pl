package perlStudyRegularexpressionsProgramming;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "正規表現-マッチ修飾子";

sub asakunoReg {
	my $yesno = 'yEs';
	if( $yesno =~ /yes/i ) {
		# i修飾子を付けることで、パターンの大小文字を区別せずに検索するようになる。
		say "i修飾子付き：\U$yesno";
	}
	if( $yesno =~ /yes/ ) {
		say "i修飾子なし：\U$yesno";
	}
	else{
		say "i修飾子なし：検索に掛からず。";
	}
}
&asakunoReg();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
