#package perlStudySignalProgramming;
$VERSION = "0.001";
use v5.24;

#package signal::sample;
my $count = 0;
sub intSignalReceive {
	$count++;
	say "Ctrl+Cシグナル受信($count回目)";
}

sub killSignalReceive {
	say "賊害要求受信($count回目のSIGINT後にKILLシグナルが呼ばれた)。";
}

$SIG{'INT'} = 'intSignalReceive';
$SIG{'KILL'} = 'killSignalReceive';

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
