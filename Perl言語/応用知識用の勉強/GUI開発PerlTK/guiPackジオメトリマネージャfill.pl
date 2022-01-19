package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのPackジオメトリマネージャ";

sub asakunoGUIargpackFillnone() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label"
			)->pack(
					-side => 'bottom',
					-fill => 'none',
				);				# ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->pack(
					-side => 'left',
					-fill => 'none',
				);				# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->pack(
					-side => 'top',
					-fill => 'none',
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'right',
					-fill => 'none',
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
#&asakunoGUIargpackFillnone(@ARGV);

sub asakunoGUIargpackFillx() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label"
			)->pack(
					-side => 'bottom',
					-fill => 'x',
				);				# ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->pack(
					-side => 'left',
					-fill => 'x',
				);				# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->pack(
					-side => 'top',
					-fill => 'x',
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'right',
					-fill => 'x',
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
#&asakunoGUIargpackFillx(@ARGV);

sub asakunoButtonGUIargpackFillnone() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "first",
				-command => sub { exit }
			)->pack(
					-side => 'bottom',
					-fill => 'none',
				);				# ラベル。
	$mw->Button(
				-text => "second",
				-command => sub { exit }
			)->pack(
					-side => 'left',
					-fill => 'none',
				);				# チェックボタン1つ目。
	$mw->Button(
				-text => "third",
				-command => sub { exit }
			)->pack(
					-side => 'top',
					-fill => 'none',
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'right',
					-fill => 'none',
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
#&asakunoButtonGUIargpackFillnone(@ARGV);

sub asakunoButtonGUIargpackFillx() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "first",
				-command => sub { exit }
			)->pack(
					-side => 'bottom',
					-fill => 'x',
				);				# ラベル。
	$mw->Button(
				-text => "second",
				-command => sub { exit }
			)->pack(
					-side => 'left',
					-fill => 'x',
				);				# チェックボタン1つ目。
	$mw->Button(
				-text => "third",
				-command => sub { exit }
			)->pack(
					-side => 'top',
					-fill => 'x',
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'right',
					-fill => 'x',
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
#&asakunoButtonGUIargpackFillx(@ARGV);

sub asakunoButtonGUIargpackFilly() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "first",
				-command => sub { exit }
			)->pack(
					-side => 'bottom',
					-fill => 'y',
				);				# ラベル。
	$mw->Button(
				-text => "second",
				-command => sub { exit }
			)->pack(
					-side => 'left',
					-fill => 'y',
				);				# チェックボタン1つ目。
	$mw->Button(
				-text => "third",
				-command => sub { exit }
			)->pack(
					-side => 'top',
					-fill => 'y',
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'right',
					-fill => 'y',
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
&asakunoButtonGUIargpackFilly(@ARGV);

sub asakunoButtonGUIargpackFillboth() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Button(
				-text => "first",
				-command => sub { exit }
			)->pack(
					-side => 'bottom',
					-fill => 'both',
				);				# ラベル。
	$mw->Button(
				-text => "second",
				-command => sub { exit }
			)->pack(
					-side => 'left',
					-fill => 'both',
				);				# チェックボタン1つ目。
	$mw->Button(
				-text => "third",
				-command => sub { exit }
			)->pack(
					-side => 'top',
					-fill => 'both',
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'right',
					-fill => 'both',
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
&asakunoButtonGUIargpackFillboth(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
