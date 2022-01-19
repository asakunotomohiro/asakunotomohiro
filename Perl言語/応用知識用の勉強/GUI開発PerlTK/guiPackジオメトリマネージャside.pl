package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのPackジオメトリマネージャ";

sub asakunoGUIargpackSide() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	#	sideオプションを指定しないため、デフォルト値(Top)が使われる。
	$mw->Label(
				-text => "Label"
			)->pack(
					-expand => 1,
					-fill => 'x'
				);				# ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->pack(
					-expand => 1,
				);				# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->pack(
					-expand => 1,
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-expand => 1,
					-fill => 'x'
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
&asakunoGUIargpackSide(@ARGV);

sub asakunoGUIargpackSideTop() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label"
			)->pack(
					-side => 'top',
					-expand => 1,
					-fill => 'x'
				);				# ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->pack(
					-side => 'top',
					-expand => 1,
				);				# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->pack(
					-side => 'top',
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
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
#&asakunoGUIargpackSideTop(@ARGV);

sub asakunoGUIargpackSideLeft() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label"
			)->pack(
					-side => 'left',
					-expand => 1,
					-fill => 'x'
				);				# ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->pack(
					-side => 'left',
					-expand => 1,
				);				# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->pack(
					-side => 'left',
					-expand => 1,
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'left',
					-expand => 1,
					-fill => 'x'
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
#&asakunoGUIargpackSideLeft(@ARGV);

sub asakunoGUIargpackSideRight() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	$mw->Label(
				-text => "Label"
			)->pack(
					-side => 'right',
					-expand => 1,
					-fill => 'x'
				);				# ラベル。
	$mw->Checkbutton(
				-text => "check1",
			)->pack(
					-side => 'right',
					-expand => 1,
				);				# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->pack(
					-side => 'right',
					-expand => 1,
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'right',
					-expand => 1,
					-fill => 'x'
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
#&asakunoGUIargpackSideRight(@ARGV);

sub asakunoGUIargpackSideBottom() {
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
				-text => "check1",
			)->pack(
					-side => 'bottom',
					-expand => 1,
				);				# チェックボタン1つ目。
	$mw->Checkbutton(
				-text => "check2",
			)->pack(
					-side => 'bottom',
					-expand => 1,
				);					# チェックボタン2つ目。
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack(
					-side => 'bottom',
					-expand => 1,
					-fill => 'x'
				);					# 終了ボタン。
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
#&asakunoGUIargpackSideBottom(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
