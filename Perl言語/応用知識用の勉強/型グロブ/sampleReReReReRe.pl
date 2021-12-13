use v5.24;

*asakuno = \"朝来野智博";
*asakuno = \("朝来野", "智博");
*asakuno = \(
				1=>"asakuno",
				2=>"tomohiro",
				3=>"asakunotomohiro",
			);
sub asakuno() {
		say "asakuno関数";
		my $tomohiro = "智博";
		my @tomohiro = (20211211, 20211212, );
		my %tomohiro = (
						$tomohiro[0]=>$tomohiro . "朝来野",
						$tomohiro[1]=>$tomohiro . "tomohiro",
						);
		return 0;
	};

say "型グロブ";

#say $asakuno;	# 
#say $asakuno[0];	# 
#say $asakuno[1];	# 
#say $asakuno->();	# 
#say $asakuno->1;	# 

say *asakuno;		# *main::asakuno
say ${*asakuno};	# asakunotomohiro
say \${*asakuno};	# SCALAR(0x7fe291005898)
say ${*asakuno}[0];	# 空文字列(undef)
say \${*asakuno}[0];	# SCALAR(0x7ff168803460)
#say ${*asakuno}[1];	# 
#say ${*asakuno}->();	# 
#say ${*asakuno}->1;	# 

my $tomohiro = "智博";
say \${*tomohiro};		# SCALAR(0x7f9b50003610)
say *tomohiro{SCALAR};	# SCALAR(0x7f9b50003610)
say *tomohiro;	# *main::tomohiro
say \{*tomohiro};	# REF(0x7fdcc0001ba0)
say ${*tomohiro};	# 空文字列(undef)

say "-" x 30 . "以下、やり直し。";

*asakuno = \*tomohiro;

say *asakuno;	# *main::tomohiro
say ${*asakuno};	# 空文字列(undef)
say *asakuno;	# 

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
