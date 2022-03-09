package perlStudyJSONdata;
$VERSION = "0.001";
use v5.24;
#use JSON;	←☆こんなものはないと言われた。
use JSON::PP;
#use utf8;
use Encode;

my $asakuno = "朝来野智博";
my @asakuno = qw( 朝来野 智博 朝来野智博 );

say "JSONデータの取扱い。";

sub asakunoJSON() {
	open my $file_fh, '>>', $asakuno
		or die "$asakunoのファイルオープン失敗($!)";
	my %hash = (
			asakuno => '朝来野智博',
			tomohiro => '智博',
			today => 20220308,
		);
	#my $json = encode_json(\%hash);	文字化けする。
	#my $json = encode "UTF-16BE", JSON::PP->new->encode ( \%hash );	文字化けを超えた化け方。
	#my $json = JSON::PP->new->utf8->space_after->encode( \%hash );	なぜ、これでも文字化けする？
	my $json = JSON::PP->new();
	#my $output = $json->utf8->encode( \%hash );	Can't use string (〜〜〜) as a HASH ref while "strict refs" in use at XXXX.pl line 28.
	#my $output = $json->utf8->space_after->encode( %hash );	Can't use string (""tomohiro"") as a HASH ref while "strict refs" in use at XXXX.pl line 29.
	say $json;	# JSON::PP=HASH(0x7faf4e9ca4c0)
	#my $output = to_json %hash;	JSON::PP::to_json has been renamed to encode_json. at XXXX.pl line 28.
	#my $output = encode_json %hash;	Can't use string ("3") as a HASH ref while "strict refs" in use at XXXX.pl line 31.

	my $hash = {
			"asakuno" => "朝来野智博",
			"tomohiro" => "智博",
			"today" => 20220308,
		};
	#my $output = $json->utf8->space_after->encode( $hash );	 Can't use string ("{"today": 20220308,"tomohiro": ""...) as a HASH ref while "strict refs" in use at XXXX.pl line 38.
	#my $output = $json->utf8->space_after->decode( $hash );	malformed JSON string, neither array, object, number, string or atom, at character offset 0 (before "HASH(0x7fb30d9e7568)...") at XXXX.pl line 37.
	#my $output = encode_json ( $hash );
	#my $output = decode( 'utf-8', encode_json ( $hash ));
	my $output = decode( 'utf-8', encode_json ( $hash ));
	#my $output = decode_json ( $hash );
	#my $output = decode( 'utf-8', encode_json($hash) );	Can't use string ("{"tomohiro":"智博","asak"...) as a HASH ref while "strict refs" in use at XXXX.pl line 42.

#	foreach( $output ) {
#		#say $file_fh $_;
#		say;
#	}
	say $output;	# {"asakuno":"朝来野智博","tomohiro":"智博","today":20220308}
	my $input = decode_json( encode('utf-8', $output ));
	say $input;	# HASH(0x7ff50181b7c0)
	while( my( $key, $value ) = each ( %$input ) ) {
		say "$key->$value";
#				tomohiro->智博
#				asakuno->朝来野智博
#				today->20220308
	}


	close $file_fh;
}
&asakunoJSON(@ARGV);


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
