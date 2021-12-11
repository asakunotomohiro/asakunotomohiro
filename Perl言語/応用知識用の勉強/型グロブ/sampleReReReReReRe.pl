use v5.24;

my $asakuno = \"朝来野智博";
my @asakuno = \("朝来野", "智博");
my %asakuno = \(
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

say $asakuno;			# SCALAR(0x7ff76481c140)
say *asakuno;			# *main::asakuno
say \*asakuno;			# GLOB(0x7ff76481c8f0)
say $asakunotomohiro;	# GLOB(0x7ff76481c8f0)

say "-" x 30;

#say $*asakunotomohiro;	# $* is no longer supported as of Perl 5.30 at sampleReReReReReRe.pl line 33.
say ${*asakunotomohiro};	# 
say ${*$asakunotomohiro};	# 

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
