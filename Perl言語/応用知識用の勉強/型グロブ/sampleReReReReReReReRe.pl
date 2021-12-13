use v5.24;

my $asakuno = "朝来野智博";

say "型グロブ";

my $asakunotomohiro = \*asakuno;

say $asakuno;			# 朝来野智博
say *asakuno;			# *main::asakuno
say \*asakuno;			# GLOB(0x7fb652005ad8)
say $asakunotomohiro;	# GLOB(0x7fb652005ad8)

say "-" x 30;

say ${\*asakuno};			# *main::asakuno
say $${\*asakuno};			# 空文字列(undef)
say ${*${\*asakuno}};		# 空文字列(undef)

say "-" x 30;

#say $*asakunotomohiro;	# $* is no longer supported as of Perl 5.30 at sampleReReReReReRe.pl line 33.
say *asakunotomohiro;		# *main::asakunotomohiro
say $asakunotomohiro;		# GLOB(0x7fb652005ad8)
say *$asakunotomohiro;		# *main::asakuno
say ${$asakunotomohiro};	# *main::asakuno
say $${$asakunotomohiro};	# 空文字列(undef)
say $${*$asakunotomohiro};	# 空文字列(undef)	←☆そんな変数がないからか？
say ${*asakunotomohiro};	# 空文字列(undef)
say ${*$asakunotomohiro};	# 空文字列(undef)	←☆なぜ？
say ${*$asakunotomohiro}{SCALAR};	# 空文字列(undef)
say {*$asakunotomohiro}{SCALAR};	# 空文字列(undef)
say ${*asakunotomohiro}{SCALAR};	# 空文字列(undef)
#say ${$asakunotomohiro}{SCALAR};	# 

say "-" x 30;

my $asakuno = "朝来野";
say *asakuno{SCALAR};		# SCALAR(0x7f821b002460)
say ${*asakuno{SCALAR}};	# 空文字列(undef)
say $${*asakuno{SCALAR}};	# 空文字列(undef)

our $asakuno = "朝来野";
say *asakuno{SCALAR};		# SCALAR(0x7f821b002460)
say ${*asakuno{SCALAR}};	# 朝来野
say $${*asakuno{SCALAR}};	# 空文字列(undef)

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
