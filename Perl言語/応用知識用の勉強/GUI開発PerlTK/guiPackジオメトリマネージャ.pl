package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのPackジオメトリマネージャ";

sub asakunoGUInoPackarg() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Label( -text => "Label" )->pack;	# ラベル。
	$mw->Checkbutton(
				-text => "check 1",
			)->pack;						# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check 2",
			)->pack;						# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack;						# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のため)。
}
&asakunoGUInoPackarg(@ARGV);

sub asakunoGUIargpack() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label"
			)->pack(
					-side => 'bottom',
					-expand => 1,
					-fill => 'x'
				);				# ラベル。
	$mw->Checkbutton(
				-text => "check 1",
			)->pack(
					-side => 'left',
					-expand => 1,
				);				# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check 2",
			)->pack(
					-side => 'left',
					-expand => 1,
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'top',
					-expand => 1,
					-fill => 'x'
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のため)。
}
&asakunoGUIargpack(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
