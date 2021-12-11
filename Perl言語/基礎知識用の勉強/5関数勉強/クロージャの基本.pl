use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

say "クロージャ";

{
	my $asakunotomohiro = "asakunotomohiro";
	sub sample(){
		# この関数名がクロージャになる。
		#	呼び出されているわけでは無いため、定義だけの状態。
		say "$asakunotomohiro";
	}
	&sample();
	#	出力結果：asakunotomohiro
}
#say "$asakunotomohiro";
#	出力結果：Global symbol "$asakunotomohiro" requires explicit package name (did you forget to declare "my $asakunotomohiro"?) at クロージャ.pl line 17.
#			Execution of クロージャ.pl aborted due to compilation errors.

&sample();
#	出力結果：asakunotomohiro


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
