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
	say $json;	# JSON::PP=HASH(0x7faf4e9ca4c0)

	my $output = decode( 'utf-8', encode_json ( \%hash ));
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
