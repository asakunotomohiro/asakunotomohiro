package perlStudyguiTk;
$VERSION = "0.002";
use v5.24;
use Tk;


my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "Perl/TK開発でのPackジオメトリマネージャ";

sub asakunoGUIargpackIn() {
	my $mw = MainWindow->new;
	$mw->title("packジオメトリマネージャ");

	# 以下、ウィジェット生成。
	my $top = $mw->Button(
				-text => "top",
				-command => \&buttoninfo,
			)->pack(
				);		# 終了ボタン。
	my $none = $mw->Button(
				-text => "none",
				-command => sub { exit }
			)->pack(
				);		# 終了ボタン。
	my $exit = $mw->Button(
				-text => "exit",
				-command => sub { $mw->destroy; &buttoninfo; }
			)->pack(
					-ipadx => 60,
					-ipady => 60,
				);		# 終了ボタン。
	#$exit->packPropagate(0);	# ウィンドウの自動リサイズ停止できず。
	$mw->packPropagate(0);	# ウィンドウの自動リサイズ停止。
	my $bottom = $mw->Button(
				-text => "bottom",
				#-command => sub {  $mw->destroy; &widgetinfo; }
				-command => \&widgetinfo,
			)->pack(
				);		# 終了ボタン。
	$none->packForget();	# アンパック(非表示)メソッド。
	my %topButtonList = $top->packInfo();		# Topボタンに関する情報を取得する。
	#my @slaveList = $bottom->packSlaves();
	my @slaveList = $mw->packSlaves();
	my $buttoninfo = 'null';
	my $text = $mw->Label(
				-textvariable => \$buttoninfo,
			)->pack(
				);

	sub buttoninfo() {
		$buttoninfo = "Topボタン情報\n" . "-" x 30 . "\n";
		for my $key (keys(%topButtonList)) {
			my $value = $topButtonList{$key};
			$buttoninfo .= "$key -> $value\n";
		}
		$buttoninfo .= "-" x 30;
		say "$buttoninfo";
	}
	sub widgetinfo() {
		$buttoninfo = "Buttonボタン情報\n" . "-" x 30 . "\n";
		foreach my $value ( @slaveList ) {
			$buttoninfo .= "$value\n";
		}
		$buttoninfo .= "-" x 30;
		say "$buttoninfo";
	}
	MainLoop;
	say "終了。";	# 出力されない(exit終了のためだが、×印で終了した場合出力される)。
}
&asakunoGUIargpackIn(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
