use v5.24;

our $asakuno = "朝来野智博";
our @asakuno = ("朝来野", "智博");
our %asakuno = (
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

my $asakunotomohiro = \*asakuno;

say $asakuno;			# 朝来野智博
say *asakuno;			# *main::asakuno
say \*asakuno;			# GLOB(0x7f83e581c188)
say $asakunotomohiro;	# GLOB(0x7f83e581c188)

say "-" x 30;

say ${*asakunotomohiro};	# 空文字列(undef)
say ${*$asakunotomohiro};	# 朝来野智博

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
