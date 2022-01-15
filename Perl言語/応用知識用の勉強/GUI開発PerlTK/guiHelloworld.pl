package perlStudyguiTk;
$VERSION = "0.001";
use v5.24;
use Tk;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのハローワールド";

sub asakunoGUI() {
	my $mw = MainWindow->new;
	$mw->title("Hello World.");
	$mw->Button(
				-text => "Done",
				-command => sub { exit }
			)->pack;
	MainLoop;
}
&asakunoGUI(@ARGV);
#	Perl/TK開発でのハローワールド
#	couldn't connect to display ":0" at MainWindow.pm line 53.
#	MainWindow->new() at guiHelloworld.pl line 12.
# 実行権限ないのが原因らしい、、、本当か？

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
