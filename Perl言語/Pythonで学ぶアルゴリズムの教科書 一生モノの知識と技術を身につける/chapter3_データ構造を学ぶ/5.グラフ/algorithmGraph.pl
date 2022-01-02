use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "無向グラフ";

sub undirectedGraph() {
	my ($data, $node) = @_;

	foreach my $yy (0..4) {
		foreach my $xx ($yy..4) {
			if ( $data->[$yy][$xx] == 1 and $data->[$xx][$yy] == 1) {
				say($node->[$yy] . "<--->" . $node->[$xx]);
			}
		}
	}
}

sub directedGraph() {
	my ( $data, $node, $arrow ) = @_;

	foreach my $yy (0..4) {
		foreach my $xx ($yy..4) {
			my $e1 = $data->[$yy][$xx];
			my $e2 = $data->[$xx][$yy];
			my $aa = $e1 + $e2*2;
			if ( $aa > 0 ) {
				say $node->[$yy] . $arrow->[$aa] . $node->[$xx];
			}
		}
	}
}

sub main() {
	my $undirectedData = [	# 無名配列リファレンス(二次元配列)
			[0, 1, 1, 0, 0],
			[1, 0, 1, 1, 0],
			[1, 1, 0, 0, 1],
			[0, 1, 0, 0, 1],
			[0, 0, 1, 1, 0],
		];
	my $node = [
			"(0)",
			"(1)",
			"(2)",
			"(3)",
			"(4)",
		];
	say "以下、無向グラフプログラム実行。";
	&undirectedGraph($undirectedData, $node);

	say "-" x 30;

	my $directedData = [	# 無名配列リファレンス(2次元配列)
			[0, 1, 1, 0, 0],
			[0, 0, 1, 1, 0],
			[0, 0, 0, 0, 0],
			[0, 1, 0, 0, 1],
			[0, 0, 1, 1, 0],
		];
	my $directedArrow = [
			"",
			"-->",
			"<--",
			"<->",
		];
	say "以下、有向グラフプログラム実行。";
	&directedGraph($directedData, $node, $directedArrow);
}
&main();
# 出力結果：
#		以下、無向グラフプログラム実行。
#			(0)<--->(1)
#			(0)<--->(2)
#			(1)<--->(2)
#			(1)<--->(3)
#			(2)<--->(4)
#			(3)<--->(4)
#------------------------------
#		以下、有向グラフプログラム実行。
#			(0)-->(1)
#			(0)-->(2)
#			(1)-->(2)
#			(1)<->(3)
#			(2)<--(4)
#			(3)<->(4)


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
