use v5.24;

# 変数宣言時に、myを付けてはならない。
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

	# 以下、普通の変数内容表示。
say $asakuno;			# 朝来野智博
	# 以下、型グロブ
say *asakuno;			# *main::asakuno
	# 以下、型グロブのリファレンス
say \*asakuno;			# GLOB(0x7f83e581c188)
	# 以下、型グロブのリファレンス
say $asakunotomohiro;	# GLOB(0x7f83e581c188)

say "-" x 30;

	# 以下、意味不明。
say ${*asakunotomohiro};	# 空文字列(undef)
	# 以下、型グロブのリファレンスからの変数内容表示(要は、型グロブリファレンスをデリファレンスしたと言うことかな)。
say ${*$asakunotomohiro};	# 朝来野智博

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
