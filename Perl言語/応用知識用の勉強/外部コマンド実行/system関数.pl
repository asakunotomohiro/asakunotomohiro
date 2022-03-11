package perlStudySystemProgramming;
$VERSION = "0.001";
use v5.24;

package system::sample;
sub main() {
	my $date = system 'date';	# 2022年 3月 6日 日曜日 14時46分02秒 JST
	say "<$date>";				# <0>
	system 'date &';	# 同じように日付を出力するのだが、下記の"以上。"を出力後に出力された。これは、バックグラウンドで動いている証拠なのだろう。

	system 'ls -d $HOME';	# 通常のホームディレクトリが表示される。
	#system "ls -d $HOME";	Global symbol "$HOME" requires explicit package name (did you forget to declare "my $HOME"?) at sample.pl line 12.
						#	Execution of sample.pl aborted due to compilation errors.
	system 'ls', '-d', '$HOME';	# ls: $HOME: No such file or directory
	system 'ls', '-d $HOME';	# ls: illegal option --
								# usage: ls [-ABCFGHLOPRSTUWabcdefghiklmnopqrstuwx1] [file ...]
	system 'ls -d', '$HOME';	# 何も表示されない。
}
&main();


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
