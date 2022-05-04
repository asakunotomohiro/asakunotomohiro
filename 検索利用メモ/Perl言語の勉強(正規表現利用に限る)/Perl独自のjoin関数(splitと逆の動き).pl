use v5.24;

my $asakuno = "asakuno";

my @asakuno = split /:/, "::asa::kuno:tomo:hiro:::";
say "@asakuno";	#   asa  kuno tomo hiro

say @asakuno;	# asakunotomohiro
my $asakuno = join " ", @asakuno;
say $asakuno;	#   asa  kuno tomo hiro
# 配列に分割されていた文字列が、1つの変数にまとめられた。

say @asakuno;	# asakunotomohiro
my $asakuno = join ":", @asakuno;
say $asakuno;	# ::asa::kuno:tomo:hiro
#	困る。
#	予想に反した結果になっている。
#	どうせならば、空文字列を無視して欲しいのだが・・・。


my $asakuno = join ":", qw(12 13 14 15 16 17);
say $asakuno;	# 12:13:14:15:16:17


print "以上。"
