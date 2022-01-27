use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止。

sub asakunoSwitch {
	my $val = shift;
	my $countA = 0;	# aのみをカウントする変数。
	my $countZ = 0;	# a以外をカウントする変数。
	foreach ($val) {
		when (/[a]/)   { $countA++; continue }
		when (/[^a]/)  { $countZ++; continue }
		default        { say "その他の選択結果。" };
	};
	say '$countA：' . "$countA";
	say '$countZ：' . "$countZ";
}

&asakunoSwitch("asakuno");	# 1文字づつ確認すると思ったが、1単語づつなので、意図した結果ではない。
#		その他の選択結果。
#		$countA：1
#		$countZ：1
# 私の望んだ結果を得たいのであれば、1文字づつ取り出す仕組みが必要か・・・when使う必要があるのか？

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
