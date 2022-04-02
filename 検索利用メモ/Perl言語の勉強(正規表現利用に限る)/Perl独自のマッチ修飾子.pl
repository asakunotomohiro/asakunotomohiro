package perlStudyRegularexpressionsProgramming;
$VERSION = "0.002";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "正規表現-マッチ修飾子";

sub asakunoRegi {
	# マッチ修飾子-i
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
#&asakunoRegi();

sub asakunoRegs {
	# マッチ修飾子-s
	my $string = "本日は\n晴天なり。";
	if( $string =~ /は.晴/s ) {
		# s修飾子を付けることで、パターンの.記号を改行無視して検索するようになる。
		say "s修飾子付き：$string";
	}
	if( $string =~ /は.晴/ ) {
		say "s修飾子なし：$string";
	}
	else{
		# こっちっが出力される。
		say "s修飾子なし：検索に掛からず。";
	}
	if( $string =~ /\N.晴/s ) {
		# こっちっが出力される。
		#	s修飾子を使っている場合と思うが、改行以外にマッチさせる場合に"\N"を使う。
		say "s修飾子あり：$string";
	}
	else{
		say "s修飾子あり：検索に掛からず。";
	}
	unless( $string =~ /\N.晴/ ) {
		say 's修飾子なし(\Nはs修飾子を付けた場合に機能するようだ)。';
	}
}
#&asakunoRegs();

sub asakunoRegx {
	# マッチ修飾子-x
	my @string = qw( 本日 123 は 456 晴天 789 なり。 );
	foreach my $value ( @string ) {
		if( $value =~ /
						[^0-9]	# 数字以外を抜き出す。
					/x ) {
			# s修飾子を付けることで、パターンの.記号を改行無視して検索するようになる。
			print "$value";
		}	# 本日は晴天なり。
	}
	say;

	# 以下、半角スペースを検索する方法。
	my $string = '本日は 晴天 なり。';
	if( $string =~ /
						\ 	# バックスラッシュ記号直後に半角スペースがある。
							# ただし、最善は\sを使うこと。  
					/x ) {
		say "$string";	# 本日は 晴天 なり。
	}

	# シャープ記号を検索する方法。
	my $string = '本日は#晴天 なり。';
	if( $string =~ /
						\#	# バックスラッシュ記号直後にシャープ記号がある。
					/x ) {
		say "$string";	# 本日は#晴天 なり。
	}
}
&asakunoRegx();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
