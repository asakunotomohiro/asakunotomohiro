use v5.24;
use Config;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "ハッシュ";

sub associativearray() {
	say "$ENV{HISTCONTROL}";	# ignoreboth
	say "HOGE：$ENV{HOGE}";	# あらかじめ、設定しておくのが吉。
	say '-' x 30;
	foreach my $key ( keys %ENV ) {
		say "$key->$ENV{$key}";	# 予想以上に大量に出てきた。
	}
	say '-' x 30;
	# 以下、OSに合わせた設定値の区切り記号で値を追加できる。
	$ENV{HOGE} = join $Config{path_sep},
					'/home/hoge/bin', $ENV{HOGE};
	say "HOGE：$ENV{HOGE}";	# HOGE：/home/hoge/bin:	←☆1つだけ設定したのでは判断できない(コロンが付いている)。
}
&associativearray();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
