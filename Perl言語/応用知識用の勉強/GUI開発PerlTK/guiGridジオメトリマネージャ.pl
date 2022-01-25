package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのGridジオメトリマネージャ";

sub asakunoGUIGrid() {
	my $mw = MainWindow->new;
	$mw->title("gridジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label",
			)->grid(
				$mw->Checkbutton(
						-text => "Label-check1",
				),
				$mw->Checkbutton(
						-text => "Label-check2",
				),
			);		# ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->grid(
				"-",
				$mw->Checkbutton(
						-text => "check1-check1",
				),
			);		# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->grid(
				$mw->Checkbutton(
						-text => "check2-check1",
				),
				$mw->Checkbutton(
						-text => "check2-check2",
				),
			);		# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->grid(
			);		# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のため)。
}
&asakunoGUIGrid(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
