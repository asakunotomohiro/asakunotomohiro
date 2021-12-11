use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");
my %asakuno = (
				1=>"asakuno",
				2=>"tomohiro",
				3=>"asakunotomohiro",
			);
sub asakuno() {
		say "asakuno関数";
		my $tomohiro = "智博";
		my @tomohiro = (20211211, 20211212, );
		my %tomohiro = (
						$tomohiro[0]=>$tomohiro . "朝来野",
						$tomohiro[1]=>$tomohiro . "tomohiro",
						);
		return 0;
	};

say "型グロブ";

#	以下、型グロブへのリファレンス作成。
my $asakunotomohiro = \*asakuno;

# 以下、通常の型グロブ代入。
#my *tomohiroasakuno = *asakuno;
#	err
#	syntax error at sample.pl line 27, near "my *tomohiroasakuno"
#	$* is no longer supported as of Perl 5.30 at sample.pl line 62.
*tomohiroasakuno = *asakuno;

say $$asakunotomohiro;
#	出力結果：*main::asakuno

say *$asakunotomohiro;
#	出力結果：*main::asakuno

say *{$asakunotomohiro};
#	出力結果：*main::asakuno

say *${$asakunotomohiro};
#	出力結果：*main::asakuno

#say *${${$asakunotomohiro}};
#	出力結果：Can't use an undefined value as a symbol reference at sample.pl line 40.

say ${*$asakunotomohiro};
#	出力結果：空文字列(undef)

#say $*asakunotomohiro;
#	出力結果：$* is no longer supported as of Perl 5.30 at sample.pl line 46.

say ${*asakunotomohiro};
#	出力結果：空文字列(undef)

say ${*asakuno};
#	出力結果：空文字列(undef)

say $asakuno;
#	出力結果：朝来野智博

say "-" x 30;
*tomohiroasakuno = *asakuno;
use v5.10;

#say $tomohiroasakuno;
#	出力結果：Variable "$tomohiroasakuno" is not imported at sample.pl line 59.

#say $*tomohiroasakuno;
#	出力結果：$* is no longer supported as of Perl 5.30 at sample.pl line 65.

#say $tomohiroasakuno;
#	Variable "$tomohiroasakuno" is not imported at sample.pl line 69.
#	Global symbol "$tomohiroasakuno" requires explicit package name (did you forget to declare "my $tomohiroasakuno"?) at sample.pl line 69.
#	Execution of sample.pl aborted due to compilation errors.

# my $tomohiroasakuno;
print $tomohiroasakuno;
print @tomohiroasakuno;

print $asakunotomohiro . "\n";	# GLOB(0x7fd6c0004ad8)
print ${*asakunotomohiro} . "\n";	# 空文字列(undef)
print ${*{$asakunotomohiro}} . "\n";	# 空文字列(undef)

print \${*asakunotomohiro} . "\n";	# SCALAR(0x7fb9a9014120)
print ${*asakunotomohiro} . "\n";	# 
print \${asakunotomohiro} . "\n";	# REF(0x7f8c338058f8)
print ${asakunotomohiro} . "\n";	# GLOB(0x7fe7da805ad8)
print ${*$asakunotomohiro} . "\n";	# 
print *$asakunotomohiro . "\n";	# *main::asakuno
print *$asakunotomohiro->() . "\n";	# asakuno関数
print ${*$asakunotomohiro}[0] . "\n";	# 



use v5.24;

#say ${${*asakuno}};
#say ${*asakuno};
#say ${*asakuno};
#say ${*{$asakuno}};

say $asakuno;
say $asakuno[0];
say $asakuno[1];
say $asakuno;

say "-" x 30;

my $tomohiroasakuno = *asakuno;
say *tomohiroasakuno;	# *main::asakuno
say $tomohiroasakuno;	# *main::asakuno
say *$tomohiroasakuno;	# *main::asakuno
say \{*$tomohiroasakuno};	# REF(0x7fcb7f801bd0)
say ${*$tomohiroasakuno};	# 空文字列(undef)

say "-" x 30;

*tomohiroasakuno = \$asakuno;
say *tomohiroasakuno;	# *main::asakuno
say ${*tomohiroasakuno};	# 朝来野智博
say ${*tomohiroasakuno}[0];	# 
say @{*tomohiroasakuno};	# 

say "-" x 30;

say ${*asakuno};	# 朝来野智博
say ${*asakuno}{0};	# 
say ${*asakuno}[0];	# 
say @{*asakuno};	# 
say %{*asakuno};	# 

say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
