use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "ハッシュ";

sub associativearray() {
	my %asakuno = (
		asakuno => 20210922,
		tomohiro => 4873118247,
		asakunotomohiro => "朝来野智博",
	);

	say "$asakuno{asakuno}";	# 20210922
	say "$asakuno{20210922}";	# 空文字列

	for my $key (keys(%asakuno)) {
		my $value = $asakuno{$key};
		say "$key -> $value";
		# 出力結果：
#					tomohiro -> 4873118247
#					asakuno -> 20210922
#					asakunotomohiro -> 朝来野智博
	}

	say "以下、keys関数・values関数";
	my @key = keys %asakuno;
	my @value = values %asakuno;
	say "キー：@key";	# キー：asakunotomohiro asakuno tomohiro
	say "値：@value";	# 値：朝来野智博 20210922 4873118247

	say "以下、組数";
	my $count = keys %asakuno;
	say "個数：$count";	# 個数：3
	my $count = values %asakuno;
	say "個数：$count";	# 個数：3

	if (%asakuno) {
		say "ハッシュが存在する。";	# ハッシュが存在する。
	}

	# 以下、ハッシュの中身を変更する方法。
	say "$asakuno{asakuno}";	# 20210922
	$asakuno{asakuno} = $asakuno;
	say "$asakuno{asakuno}";	# 朝来野智博

	# 以下、追加？
	# %asakuno += ('addkey', "addvalue");
				# Can't modify private hash in addition (+) at ハッシュ.pl line 48, near ");"
				# Execution of ハッシュ.pl aborted due to compilation errors.

	# %asakuno .= ('addkey', "addvalue");
				# Can't modify private hash in concatenation (.) or string at ハッシュ.pl line 52, near ");"
				# Execution of ハッシュ.pl aborted due to compilation errors.

	%asakuno = ('addkey', "addvalue");
	say "$asakuno{asakuno}";	# 空文字列
	say "$asakuno{addkey}";		# addvalue
	# 追加することが出来ない。どうすればいい？
	$asakuno{'today'} = 20210923;
	say "$asakuno{addkey}";		# addvalue
	say "$asakuno{today}";		# 20210923
}
&associativearray();

say "-" x 30;

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
