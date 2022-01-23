package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのPackジオメトリマネージャ";

sub asakunoGUIargpackIn() {
	my $mainwin = MainWindow->new;
	$mainwin->title("mainウィンドウ");

	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	my $top = $mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	my $none = $mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	my $exit = $mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	my $bottom = $mw->Button(
				-text => "bottom",
				-command => sub { exit }
			)->pack(
					-in =>
						#$mainwin,	←☆変化なし。
						$top,
						#$none,
						#$exit,
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
&asakunoGUIargpackIn(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
