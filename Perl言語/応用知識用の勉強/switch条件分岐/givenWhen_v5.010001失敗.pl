use 5.010001;
#no warnings 'experimental::smartmatch';	# 警告抑止。

sub asakunoSwitch {
	my $val = shift;
	given ($val) {
		#	抑止をすることで、以下の余分なメッセージを未表示にできる。
		# given is experimental at givenWhen_v5.010001失敗.pl line 5.
		when (1)    { print "number 1" }	# when is experimental at givenWhen_v5.010001失敗.pl line 7.
		when ("a")  { print "string a" }	# when is experimental at givenWhen_v5.010001失敗.pl line 8.
		default     { print "previous case not true" };
	};
}
&asakunoSwitch(1);
#	出力結果：number 1

say;
say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
