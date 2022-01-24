package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのPackジオメトリマネージャ";

sub asakunoGUIargpackScaley() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	$mw->Button(
				-text => "ccc5c",
				-command => sub { exit }
			)->pack(
					-ipady => '5c',
				);					# 終了ボタン。
	$mw->Button(
				-text => "iii1i",
				-command => sub { exit }
			)->pack(
					-ipady => '1i',
				);					# 終了ボタン。
	$mw->Button(
				-text => "mmm10m",
				-command => sub { exit }
			)->pack(
					-ipady => '10m',
				);					# 終了ボタン。
	$mw->Button(
				-text => "ppp10p",
				-command => sub { exit }
			)->pack(
					-ipady => '10p',
				);					# 終了ボタン。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
&asakunoGUIargpackScaley(@ARGV);

sub asakunoGUIargpackScalex() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	$mw->Button(
				-text => "ccc5c",
				-command => sub { exit }
			)->pack(
					-ipadx => '5c',
				);					# 終了ボタン。
	$mw->Button(
				-text => "iii1i",
				-command => sub { exit }
			)->pack(
					-ipadx => '1i',
				);					# 終了ボタン。
	$mw->Button(
				-text => "mmm10m",
				-command => sub { exit }
			)->pack(
					-ipadx => '10m',
				);					# 終了ボタン。
	$mw->Button(
				-text => "ppp10p",
				-command => sub { exit }
			)->pack(
					-ipadx => '10p',
				);					# 終了ボタン。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
&asakunoGUIargpackScalex(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
