package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのPackジオメトリマネージャ";

sub asakunoGUIargpackIpadx() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	$mw->Button(
				-text => "sec",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-ipadx => 6,
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
#&asakunoGUIargpackIpadx(@ARGV);

sub asakunoGUIargpackPadx() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
					-side => 'left',
				);					# 終了ボタン。
	$mw->Button(
				-text => "sec",
				-command => sub { exit }
			)->pack(
					-side => 'left',
					-padx => 10,
				);					# 終了ボタン。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'left',
				);					# 終了ボタン。
	$mw->Button(
				-text => "end",
				-command => sub { exit }
			)->pack(
					-side => 'left',
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
&asakunoGUIargpackPadx(@ARGV);

sub asakunoGUIargpackIpady() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "top",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	$mw->Button(
				-text => "sec",
				-command => sub { exit }
			)->pack(
				);					# 終了ボタン。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-ipady => 6,
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
&asakunoGUIargpackIpady(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
