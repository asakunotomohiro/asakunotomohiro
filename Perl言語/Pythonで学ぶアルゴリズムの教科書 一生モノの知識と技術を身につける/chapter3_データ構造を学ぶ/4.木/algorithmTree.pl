use v5.24;

my $asakuno = "朝来野智博";
my @asakuno = ("朝来野", "智博");

my $LEFT = 0;	# 左ノード番号用定数
my $RIGHT = 1;	# 右ノード番号用定数
my $DATA = 2;	# データ値用定数

# 以下、2次元配列。
my $node = [
		[1,	2,	10],
		[3,	4,	20],
		[5,	undef,	30],
		[undef,	undef,	40],
		[6,	7,	50],
		[undef,	undef,	60],
		[undef,	undef,	70],
		[undef,	undef,	80],
	];
#my $MAX = length($node);
#my $MAX = @$node;	←☆これでも十分だが、関数を挟むことにした。
my $MAX = scalar(@$node);

say "木構造";

sub tree() {
	say "指定番号のノード調査。";
	say "入力なしのEnter押下にてプログラム終了。";

	while(){	# 無限ループ
		my $inputNumber = <STDIN>;	# スタンダードイン用ファイルハンドル
#		if( $inputNumber eq "" ) {
#		if( $inputNumber eq undef ) {
#		if( defined $inputNumber ) {
#		unless( defined $inputNumber ) {
		# 改行削除。
		chomp $inputNumber;
#		say "入力値：<" . $inputNumber . ">";
#		if( length($inputNumber) == 0 ) {
#		if( defined $inputNumber ) {
#		unless( defined $inputNumber ) {
		if( $inputNumber eq undef ) {
			# 空文字列(undef)の場合、プログラム終了。
			last;
		}
		elsif( $inputNumber =~ /[\D]+/ ) {
			# 数字以外の文字が1個以上来た場合、処理を先頭に戻すことにした(正規表現での切り分け)。
			say "入力値($inputNumber)は数字のみ。";
			next;
		}
		#my $number = 	←☆キャスト不要と判断した。
		if( 0 <= $inputNumber and $inputNumber < $MAX){
			say "node$inputNumberの値は$node->[$inputNumber][$DATA]";
			my $leftNumber = $node->[$inputNumber][$LEFT];
			if( $leftNumber != undef ){
				say "左の葉は$node->[$leftNumber][$DATA]";
			}
			else{
				say "左の葉は存在しない。";
			}
			my $rightNumber = $node->[$inputNumber][$RIGHT];
			if( $rightNumber ne undef ){
				say "右の葉は$node->[$rightNumber][$DATA]";
			}
			else{
				say "右の葉は存在しない。";
			}
		}
		else{
			say "0から" . ($MAX - 1) . "の範囲に納めること。";
		}
	}
}

&tree();
# 出力結果：
#			指定番号のノード調査。
#			入力なしのEnter押下にてプログラム終了。
#			0
#			node0の値は10
#			左の葉は20
#			右の葉は30
#			1
#			node1の値は20
#			左の葉は40
#			右の葉は50
#			2
#			node2の値は30
#			左の葉は60
#			右の葉は存在しない。
#			3
#			node3の値は40
#			左の葉は存在しない。
#			右の葉は存在しない。
#			4
#			node4の値は50
#			左の葉は70
#			右の葉は80
#			5
#			node5の値は60
#			左の葉は存在しない。
#			右の葉は存在しない。
#			6
#			node6の値は70
#			左の葉は存在しない。
#			右の葉は存在しない。
#			7
#			node7の値は80
#			左の葉は存在しない。
#			右の葉は存在しない。
#			8
#			0から7の範囲に納めること。


say "以上。"
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=perl noexpandtab:
