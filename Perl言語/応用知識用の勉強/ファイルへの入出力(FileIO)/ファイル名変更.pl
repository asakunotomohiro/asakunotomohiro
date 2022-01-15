package perlStudyInputOutput;
$VERSION = "0.002";
use v5.24;
no warnings 'experimental::smartmatch';	# 警告抑止(スマートマッチ演算子~~のために必要)。
use Cwd;	# カレントディレクトリ呼び出しモジュール。

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "ファイル名変更";

sub asakunoInputOutput() {
	#rename 'asakuno.txt', 'tomohiro.md';	# 名前が変わった(単純変更)。
#			$ ll
#			total 16
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 asakuno.txt*
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 ファイル名変更.pl*
#			$ perl ファイル名変更.pl
#			ファイル名変更
#			以上。
#			$ ll
#			total 16
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 tomohiro.md*
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 ファイル名変更.pl*
#			$

	#rename 'tomohiro.md', 'asakunotomohiro/tomohiro.md';	# ファイル移動。
#			$ ll -R
#			total 16
#			-rwxr-xr-x  1 asakunotomohiro  staff  1065  1  9 11:46 ファイル名変更.pl*
#			drwxr-xr-x  2 asakunotomohiro  staff    64  1  9 11:45 asakunotomohiro/	←☆ここに移動する。
#			-rwxr-xr-x  1 asakunotomohiro  staff   570  1  9 11:42 tomohiro.md*	←☆これを移動する。
#			
#			./asakunotomohiro:	←☆移動前なので空っぽ。
#			$ perl ファイル名変更.pl	←☆移動実施。
#			ファイル名変更
#			以上。
#			$ ll -R
#			total 8
#			drwxr-xr-x  3 asakunotomohiro  staff    96  1  9 11:47 asakunotomohiro/
#			-rwxr-xr-x  1 asakunotomohiro  staff  1065  1  9 11:46 ファイル名変更.pl*
#			
#			./asakunotomohiro:	←☆ファイルが移動され、ここに移った。
#			total 8
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 tomohiro.md*
#			$

	#rename 'tomohiro.md', 'asakunotomohiro/asakuno.md';	# ファイル移動後に名前を変える。
#			$ ll -R
#			total 16
#			-rwxr-xr-x  1 asakunotomohiro  staff  2049  1  9 11:58 ファイル名変更.pl*
#			drwxr-xr-x  3 asakunotomohiro  staff    96  1  9 11:57 asakunotomohiro/	←☆ここに移動後、名前を変える。
#			-rwxr-xr-x  1 asakunotomohiro  staff   570  1  9 11:42 tomohiro.md*	←☆このファイルを操作する。
#			
#			./asakunotomohiro:	←☆移動前なので空っぽ。
#			$ perl ファイル名変更.pl	←☆作業実施。
#			ファイル名変更
#			以上。
#			$ ll -R
#			total 8
#			drwxr-xr-x  4 asakunotomohiro  staff   128  1  9 11:59 asakunotomohiro/
#			-rwxr-xr-x  1 asakunotomohiro  staff  2049  1  9 11:58 ファイル名変更.pl*
#			
#			./asakunotomohiro:	←☆移動が確認できる。
#			total 8
#			-rwxr-xr-x  1 asakunotomohiro  staff  570  1  9 11:42 asakuno.md*	←☆ファイル名が変わっている。
#			$

	# 以下、ファイル移動用の前座。
	my $currentDir = getcwd();	# カレントディレクトリ取得。
	say $currentDir;
	say "以下、ファイル作成前のディレクトリ配下の状況。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
		next if $filename eq "." || $filename eq "..";
		if( -f $filename ) {
			say "\t" . $filename;
		}
		elsif( -d $filename ) {
			say "\t以下、$filenameディレクトリ配下の状況。";
			opendir my $underdh, $filename || die "配下のディレクトリオープン失敗($!)。";
			foreach my $subfilename ( readdir $underdh ) {
				#next if "$filename/$subfilename" eq "." || "$filename/$subfilename" eq "..";
				next if "$subfilename" eq "." || "$subfilename" eq "..";
				say "\t\t$subfilename";
			}
			say "\tここまでがディレクトリ配下の状況。";
		}
	}
	say "ファイル作成実施。";
#	foreach my $file ( @asakuno ) {
		if( ! open FILE, '>>', $asakuno) {
			die "書き込み失敗($!)。"
		}
#	}
	say "以下、ファイル作成後のディレクトリ配下の状況。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
		next if $filename eq "." || $filename eq "..";
		if( -f $filename ) {
			say "\t" . $filename;
		}
		elsif( -d $filename ) {
			say "\t以下、$filenameディレクトリ配下の状況。";
			opendir my $underdh, $filename || die "配下のディレクトリオープン失敗($!)。";
			foreach my $subfilename ( readdir $underdh ) {
				next if "$subfilename" eq "." || "$subfilename" eq "..";
				say "\t\t$subfilename";
			}
			say "\tここまでがディレクトリ配下の状況。";
		}
	}
	# ここまでがファイル移動の準備。
	# ここからが、ファイル名単純変更作業。
	say "以下、単純ファイル名変更。";
	my $fullname = 'asakunotomohiro.txt';
	if( -e $fullname ) {
		warn "既に同名ファイルが存在する。\n";
	}
	elsif( rename $asakuno => $fullname ){	# 変更実施。
		say "変更成功。";
	}
	else{
		# 本の内容がバグっているのでは？
		# 私の勘違い。
		# 上記の名前変更で失敗した場合0が返る。
		# 0の場合偽になるため、ここの処理が実行される。
		warn "ファイル名変更失敗($!)。\n";
	}
	say "以下、変更後のディレクトリ内容確認。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
		next if $filename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
		if( -f $filename && $filename eq $fullname ) {
			say "\t" . $filename;	# ここで変更後のファイル名が表示される。
		}
		elsif( -d $filename ) {
			say "\t以下、$filenameディレクトリ配下の状況。";
			opendir my $underdh, $filename || die "配下のディレクトリオープン失敗($!)。";
			foreach my $subfilename ( readdir $underdh ) {
				next if $subfilename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
				if( -f "$filename/$subfilename" && $subfilename eq $fullname ) {
					say "\t\t$subfilename";
				}
			}
			say "\tここまでがディレクトリ配下の状況。";
		}
	}
	# ここまでが、ファイル名単純変更作業。
	# ここからが、ファイル移動作業。
	say "ファイル移動前の状況確認。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
		next if $filename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
		if( -f $filename && $filename eq $fullname ) {
			say "\t" . $filename;	# ここで変更後のファイル名が表示される。
		}
		elsif( -d $filename ) {
			say "\t以下、$filenameディレクトリ配下の状況。";
			opendir my $underdh, $filename || die "配下のディレクトリオープン失敗($!)。";
			foreach my $subfilename ( readdir $underdh ) {
				next if $subfilename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
				if( -f "$filename/$subfilename" && $subfilename eq $fullname ) {
					say "\t\t$subfilename";
				}
			}
			say "\tここまでがディレクトリ配下の状況。";
		}
	}
	say "以下、ファイル移動。";
	if( rename $fullname => "asakunotomohiro/$fullname" ){	# 変更実施。
		say "移動成功。";
	}
	else{
		warn "ファイル移動失敗($!)。\n";
	}
	say "以下、変更後のディレクトリ内容確認。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
		next if $filename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
		if( -f $filename && $filename eq $fullname ) {
			say "\t" . $filename;
		}
		elsif( -d $filename ) {
			say "\t以下、$filenameディレクトリ配下の状況。";
			opendir my $underdh, $filename || die "配下のディレクトリオープン失敗($!)。";
			foreach my $subfilename ( readdir $underdh ) {
				next if $subfilename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
				#if( -f $subfilename && $subfilename eq $fullname ) {
				#if( -f $subfilename && "$subfilename" eq "$fullname" ) {
				#if( -f $subfilename ) {
				if( -f "$filename/$subfilename" && $subfilename eq $fullname ) {
					say "\t\t$subfilename";	# ここで変更後のファイル名が表示される。
				}
			}
			say "\tここまでがディレクトリ配下の状況。";
		}
	}
	# ここまでが、ファイル移動作業。
#	say "asakunotomohiro/$fullnameファイル削除。";
#	unlink "asakunotomohiro/$fullname";
	# ここからが、ファイル移動後にファイル名変更作業。
	say "ファイル移動前の状況確認。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
		next if $filename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
		if( -f $filename && $filename eq $fullname ) {
			say "\t" . $filename;	# ここで変更後のファイル名が表示される。
		}
		elsif( -d $filename ) {
			say "\t以下、$filenameディレクトリ配下の状況。";
			opendir my $underdh, $filename || die "配下のディレクトリオープン失敗($!)。";
			foreach my $subfilename ( readdir $underdh ) {
				next if $subfilename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
				if( -f "$filename/$subfilename" && $subfilename eq $fullname ) {
					say "\t\t$subfilename";
				}
			}
			say "\tここまでがディレクトリ配下の状況。";
		}
	}
	my $fulltomo = "tomohiro.md";
	say "以下、asakunotomohiroディレクトリからファイル($fullname)をカレントディレクトリに$fulltomoとして移動。";
	if( rename "asakunotomohiro/$fullname" => "$fulltomo" ){	# 変更実施。
		say "移動成功。";
		$fullname = $fulltomo;
	}
	else{
		warn "ファイル移動失敗($!)。\n";
	}
	say "以下、変更後のディレクトリ内容確認。";
	opendir my $dh, $currentDir || die "ディレクトリオープン失敗($!)。";
	foreach my $filename (readdir $dh) {
		next if $filename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
		if( -f $filename && $filename eq $fullname ) {
			say "\t" . $filename;	# ここで変更後のファイル名が表示される。
		}
		elsif( -d $filename ) {
			say "\t以下、$filenameディレクトリ配下の状況。";
			opendir my $underdh, $filename || die "配下のディレクトリオープン失敗($!)。";
			foreach my $subfilename ( readdir $underdh ) {
				next if $subfilename =~ /^[.]/;	# ドットから始まる場合は、ループの先頭にスキップする。
				if( -f "$filename/$subfilename" && $subfilename eq $fullname ) {
					say "\t\t$subfilename";
				}
			}
			say "\tここまでがディレクトリ配下の状況。";
		}
	}
	# ここまでが、ファイル移動後にファイル名変更作業。

	say "$fullnameファイル削除。";
	#unlink "$filename" || warn "ファイル削除失敗($!)。";	処理失敗(||が論理和として動いてくれない)。
	unlink "$filename" or warn "ファイル削除失敗($!)。";
}
&asakunoInputOutput(@ARGV);

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
