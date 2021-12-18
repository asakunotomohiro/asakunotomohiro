use v5.24;
#require "関数ライブラリ(呼ばれる側).pl";
	# Can't locate 関数ライブラリ(呼ばれる側).pl in @INC (@INC contains:"以下のPathが含まれる") at 関数ライブラリ(呼ぶ側).pl line 2.
#say "@INC";
	# /Users/asakunotomohiro/perl5/perl-5.34.0/lib/site_perl/5.34.0/darwin-2level
	# /Users/asakunotomohiro/perl5/perl-5.34.0/lib/site_perl/5.34.0
	# /Users/asakunotomohiro/perl5/perl-5.34.0/lib/5.34.0/darwin-2level
	# /Users/asakunotomohiro/perl5/perl-5.34.0/lib/5.34.0
# なぜにカレントディレクトリがないのだろう(上記は手動で改行済み)。

@INC = (".", @INC);
#require "関数ライブラリ(呼ばれる側).pl";
	# エラーになる。
	# Can't locate 関数ライブラリ(呼ばれる側).pl in @INC (@INC contains:
	# .	←☆これはカレントディレクトリとして認識してくれていない？
	# /Users/asakunotomohiro/perl5/perl-5.34.0/lib/site_perl/5.34.0/darwin-2level
	# /Users/asakunotomohiro/perl5/perl-5.34.0/lib/site_perl/5.34.0
	# /Users/asakunotomohiro/perl5/perl-5.34.0/lib/5.34.0/darwin-2level
	# /Users/asakunotomohiro/perl5/perl-5.34.0/lib/5.34.0)
	# at 関数ライブラリ(呼ぶ側).pl line 12.
#require "関数ライブラリ.pl";
		# 駄目だった。

	# 以下、"/Users/asakunotomohiro/perl5/perl-5.34.0/lib/5.34.0"に配置した。
require "asakuno/funcLib.pl";	# 関数ライブラリ読み込み終了
my @asakuno = ("朝来野", "智博", );

&asakuno(@asakuno);			# 関数：朝来野 智博
&asakuno("関数呼び出し");	# 関数：関数呼び出し

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
