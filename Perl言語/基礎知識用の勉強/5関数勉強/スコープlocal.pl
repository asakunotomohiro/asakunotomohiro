$asakuno = "朝来野智博";
$count = 0;
$number = 0;

sub asakuno {
	local $asakuno = "asakuno";
	local $number  = 100;
	print $asakuno . '    <$count：' . $count . '> <$number：' . "$number>\n";
}

$count++;
$nubmer++;
print $asakuno . ' <$count：' . "$count>\n";
		# 朝来野智博 <$count：1>
$count++;
$nubmer++;
&asakuno();
		# asakuno    <$count：2> <$number：100>
$count++;
$nubmer++;
print $asakuno . ' <$count：' . "$count>\n";
		# 朝来野智博 <$count：3>

print "以上。\n"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
