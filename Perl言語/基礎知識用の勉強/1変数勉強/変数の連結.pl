use v5.24;

my $asakuno = "朝来野";
my $tomohiro = "智博";
my $asa = "朝";

# 以下、ヒアドキュメント
my $tomo = <<"ASAKUNO";
朝
来
野
智博
ASAKUNO

print "$asakuno$tomohiro" . "\n";	# 朝来野智博
print $asakuno . $tomohiro . "\n";	# 朝来野智博
print '$asakuno$tomohiro' . "\n";	# $asakuno$tomohiro
print '$asakuno' . $tomohiro . "\n";	# $asakuno智博
print "$asakuno's" . $tomohiro . "\n";	# 智博
#print "$asakunos" . $tomohiro . "\n";	# Global symbol "$asakunos" requires explicit package name (did you forget to declare "my $asakunos"?) at /〜 line 12.
print "${asakuno}'s" . $tomohiro . "\n";	# 朝来野's智博
print "$asakuno" . "'s" . $tomohiro . "\n";	# 朝来野's智博
print $asakuno , $tomohiro . "\n";	# 朝来野智博

print "$tomo" . "\n";	# 朝
						# 来
						# 野
						# 智博


