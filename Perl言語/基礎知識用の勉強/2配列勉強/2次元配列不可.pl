use v5.24;

my @asakuno = qw(20210830 20210831 );
my @tomohiro = qw(20210901 20210902 );
my @asakunotomohiro = (@asakuno, @tomohiro);
say "@asakunotomohiro";	# 20210830 20210831 20210901 20210902

my @asakunotomohiro = (@asakuno . @tomohiro);
say "@asakunotomohiro";	# 22

my @asakunotomohiro = @asakuno . @tomohiro;
say "@asakunotomohiro";	# 22

my @asakunotomohiro = @asakuno , @tomohiro;
say "@asakunotomohiro";	# 20210830 20210831


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
