use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");
my %asakuno = (
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

#	以下、型グロブへのリファレンス作成。
*asakunotomohiro = \*asakuno;

# 以下、通常の型グロブ代入。
*tomohiroasakuno = *asakuno;

say "-" x 30;

say ${*asakuno};	# 空文字列(undef)
say ${\$asakuno};	# 朝来野智博	←☆こちらのほうが効率は良いのだが・・・。

say "-" x 30;

say ${*asakunotomohiro};	# 空文字列(undef)
say ${*tomohiroasakuno};	# 空文字列(undef)

say "-" x 30;

#say ${*$asakunotomohiro};	# Variable "$asakunotomohiro" is not imported at sampleRe.pl line 41.
say *asakunotomohiro;	# *main::asakuno
say *tomohiroasakuno;	# *main::asakuno

say ${*main::asakuno};	# 空文字列(undef)	←☆嘘だろう!?
say ${main::asakuno};	# 空文字列(undef)	←☆嘘だろう!?
say $main::asakuno;		# 空文字列(undef)	←☆嘘だろう!?
say ${asakuno};	# 朝来野智博

say ${*asakuno}[0];	# 空文字列(undef)
say ${asakuno}[0];	# 朝来野

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
