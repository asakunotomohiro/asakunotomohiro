use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "サブルーチンリファレンス";

my $subfunc = sub {
			say $asakuno;	# 朝来野智博
			$asakuno = "asakuno";
			say "引数：" . $_[0];	# 引数：関数内から関数外の無名関数を呼ぶ。

			return $asakuno;
	};

sub funcReference() {
	my $tomohiro = say $subfunc->("関数内から関数外の無名関数を呼ぶ。");
	say $tomohiro;	# asakuno
					# 1	←☆この1は何？
	$tomohiro = sub {
			say $asakuno . "関数内の無名サブルーチンからの表記" . $asakuno[0];
		};
	say $tomohiro->();	# asakuno関数内の無名サブルーチンからの表記朝来野
						# 1
	my $asakunotomohiro = sub {
			say "奇っ怪な関数";
		}
}
my $asakunotomohiro = \&funcReference;

$asakunotomohiro->($asakuno, \@asakuno);

$asakunotomohiro->$asakunotomohiro->();
#			asakuno
#			引数：関数内から関数外の無名関数を呼ぶ。
#			asakuno
#			1
#			asakuno関数内の無名サブルーチンからの表記朝来野
#			1
#			奇っ怪な関数	←☆これだけを呼び出したかった。

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
