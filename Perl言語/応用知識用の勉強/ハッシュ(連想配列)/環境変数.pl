use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "ハッシュ";

sub associativearray() {
	say "$ENV{HISTCONTROL}";	# ignoreboth
}
&associativearray();

say "-" x 30;

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
