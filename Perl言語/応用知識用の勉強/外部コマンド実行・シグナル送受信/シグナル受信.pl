#package perlStudySignalProgramming;
$VERSION = "0.001";
use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "シグナル受信プログラム(無限ループになっているため気をつけること)。";

#package signal::sample;
my $count = 0;
sub intSignalReceive {
	$count++;
	say "Ctrl+Cシグナル受信($count回目)";
}

sub killSignalReceive {
	say "賊害要求受信($count回目のSIGINT後にKILLシグナルが呼ばれた)。";
}

#$SIG{'INT'} = 'intSignalReceive';	←☆こっちでも下記の同じ結果が出る。
$SIG{'INT'} = sub {
		$count++;
		say "Ctrl+Cシグナル受信($count回目)";
	};
$SIG{'KILL'} = 'killSignalReceive';
#$SIG{'KILL'} = sub {
#	say "賊害要求受信($count回目のSIGINT後にKILLシグナルが呼ばれた)。";
#};

package signal::sample;
sub main() {
	#$SIG{'KILL'} = 'signalReceive';
#	foreach ( 1..10000 ) {
#		say;
#	}
	while() {
		# 無限ループ。
		#$count++;
		#say $count;
	}
}
&main();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
