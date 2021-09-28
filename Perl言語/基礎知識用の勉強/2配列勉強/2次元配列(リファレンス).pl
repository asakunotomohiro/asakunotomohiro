use v5.24;

my @hoge = qw(20210927 20210928 );
my @boo = qw(20210929 20210930 );

my $twoarray = [\@hoge, \@boo];

say $twoarray->[0];	# ARRAY(0x7ff4b5004328)
say $twoarray->[1];	# ARRAY(0x7ff4b50047f0)

say $twoarray->[0][0];	# 20210927
say $twoarray->[0][1];	# 20210928
say $twoarray->[1][0];	# 20210929
say $twoarray->[1][1];	# 20210930



say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
