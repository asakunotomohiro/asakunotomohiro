package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;
#Assuming 'require Tk::Lable;' at guiPackジオメトリマネージャ.pl line 17.
#require Tk::Lable;
#	Can't locate Tk/Lable.pm in @INC (you may need to install the Tk::Lable module) (@INC contains: 5.34.0 darwin-2level ) at guiPackジオメトリマネージャ.pl line 6.
#use Tk::Lable;
#	BEGIN failed--compilation aborted at guiPackジオメトリマネージャ.pl line 8.

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのPackジオメトリマネージャ";

sub asakunoGUI() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");
	# 以下、ウィジェット生成。
#	$mw->Lable( -text => "見栄えのテスト表示" )->pack;	←☆コメントアウトしたら動いたが？
	$mw->Label( -text => "Label" )->pack;

	$mw->Checkbutton(
				-text => "check 1",
			)->pack;
	$mw->Checkbutton(
				-text => "check 2",
			)->pack;
	$mw->Button(
				-text => "exit",
				-command => sub { exit }
			)->pack;
	MainLoop;
	say "終了。";
}
&asakunoGUI(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
