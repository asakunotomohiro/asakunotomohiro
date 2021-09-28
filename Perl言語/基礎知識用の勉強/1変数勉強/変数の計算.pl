use v5.24;

my $asa;


$asa = 2021 + 829;
say $asa;	# 2850
$asa = 2021 - 829;
say $asa;	# 1192
$asa = 2021 * 829;
say $asa;	# 1675409
$asa = 2021 / 829;
say $asa;	# 2.437876960193
$asa = 2021 % 829;
say $asa;	# 363
$asa = 2021 ** 829;
say $asa;	# Inf
$asa = 3 ** 2;
say $asa;	# 9
$asa = 2021 // 829;
say $asa;	# 2021

say "-" x 20;

my $asa = "2021";
my $tomo = "829";
say $asa + $tomo;	# 2850

say "-" x 20;

my $asa = 2021;
my $tomo = "8a9";
say $asa + $tomo;	# 2029
	# エラーになって欲しい。

say "以上。"

# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
