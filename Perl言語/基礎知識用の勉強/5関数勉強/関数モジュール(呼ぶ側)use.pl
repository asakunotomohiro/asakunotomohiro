#package asakunotomohiro;
use v5.24;
say "呼ぶ側のプログラムになる。";

BEGIN { use File::Basename; my $pwd = dirname($0); push @INC, $pwd; }	# 末尾に追加。

#require "関数ライブラリ(呼ばれる側)require.pl";
#	出力結果：関数ライブラリ読み込み終了
use 関数モジュール(呼ばれる側)use;	←☆本来は2バイト文字を認識しない。
#	出力結果：呼ぶ側のプログラムになる。
#	出力結果：ライブラリ読み込み完了
my @asakuno = ("朝来野", "智博", );

&asakuno(@asakuno);	#←☆これで呼び出せるはずなのだが、エラーになる(パッケージに入れたのが原因で呼び出せなくなっている？)。
					# 同じパッケージ内であれば修飾せずに呼び出せる(私は就職したいけど)。
					# それではuseする意味が無くなるため、呼ばれる側の@EXPORTが機能していないことになる。
					# その理由が、パッケージ名とファイル名が異なっているため、紐付けられず、呼び出しが出来なくなっていると言うこと。
					# そのため、パッケージ名を付けて呼び出すか、同じパッケージ内から呼び出す必要が出てきている。
#&asakunotomohiro::asakuno(@asakuno);		# 関数：朝来野 智博
#&asakunotomohiro::asakuno("関数呼び出し");	# 関数：関数呼び出し

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
