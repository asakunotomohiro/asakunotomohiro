use v5.24;

my @asakuno = ("朝来野", "智博", );

# ハッシュで受け取る前提になるため、渡す側もハッシュを用いた引数指定になる。
sub asakuno {
	my %arg = @_;	# 引数リストをハッシュに変換する。

	# 指定されていない引数ではデフォルト値を使う。
	$arg{arg1} = "asakuno関数" unless exists $arg{arg1};
	$arg{arg2} = "関数用引数"  unless exists $arg{arg2};
	$arg{arg99} = "引数99値"   unless exists $arg{arg99};

	say $arg{arg1};
	say $arg{arg2};
	say $arg{arg99};
}
&asakuno(arg1=>"関数呼び出し", arg2=>20211120);
#			関数呼び出し
#			20211120
#			引数99値

say "-" x 30;
asakuno;
#			asakuno関数
#			関数用引数
#			引数99値

say "-" x 30;
asakuno arg99=>4873118247, arg1=>20211120;
#			20211120
#			関数用引数
#			4873118247

say "-" x 30;
asakuno "本日は晴天なり。";
#			デフォルト出力以外の出力なし(今回付けた引数値は無視されたと言うこと)。

say "-x" x 30 . "-";
# 以下、上記のデフォルト引数を簡素化した例。
sub tomohiro {
	my %defaults = (	# デフォルトの引数を設定する。
				arg1=>"asakuno関数",
				arg2=>"関数用引数",
				arg99=>"引数99値",
			);
	my %arg = (%defaults, @_);	# 引数リストをハッシュに変換する。

	# 指定されていない引数ではデフォルト値を使う。
	say $arg{arg1};
	say $arg{arg2};
	say $arg{arg99};
}
&asakuno(arg1=>"関数呼び出し", arg2=>20211120);
#				関数呼び出し
#				20211120
#				引数99値

say "-" x 30;
asakuno;
#				asakuno関数
#				関数用引数
#				引数99値

say "-" x 30;
asakuno arg99=>4873118247, arg1=>20211120;
#				20211120
#				関数用引数
#				4873118247

say "-" x 30;
asakuno "本日は晴天なり。";
#			デフォルト出力以外の出力なし(今回付けた引数値は無視されたと言うこと)。

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
