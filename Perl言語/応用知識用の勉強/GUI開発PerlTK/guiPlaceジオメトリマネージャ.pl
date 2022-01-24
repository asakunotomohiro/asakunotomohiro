package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのPlaceジオメトリマネージャ";

sub asakunoGUIGrid() {
	my $mw = MainWindow->new;
	$mw->title("Placeジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label",
			)->place(
				-x => 25,
				-y => 30,
			);			# ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->place(
				-x => 45,
				-y => 45,
				-height => 30,
				-width => 30,
			);			# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->place(
				-x => 65,
				-y => 60,
				-height => 30,
				-width => 30,
			);			# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->place(
				-x => 85,
				-y => 75,
			);			# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のため)。
}
&asakunoGUIGrid(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
