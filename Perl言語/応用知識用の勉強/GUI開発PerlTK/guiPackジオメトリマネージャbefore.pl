package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのPackジオメトリマネージャ";

sub asakunoGUIargpackBefore() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	my $top = $mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	$mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	$mw->Button(
				-text => "top_before",
				-command => sub { exit }
			)->pack(
					-before =>
								$top,
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
&asakunoGUIargpackBefore(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
