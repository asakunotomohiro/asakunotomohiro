#include <stdio.h>

int main(void)
{
	char char_asakuno = 127;
	short short_asakuno = 32767;
	int int_asakuno = 2147483647;
	long long_asakuno = 2147483647;
	long long wlong_asakuno = long_asakuno * long_asakuno;

	float float_asakuno = 3.402823e+038;
	double double_asakuno = 1.797693e+308;

	// bool型はコンパイルエラーが発生した。
//	bool bool_asakuno = true;	// use of undeclared identifier 'bool'

	printf("charサイズ%d\n", char_asakuno);	// charサイズ127
	printf("shortサイズ%d\n", short_asakuno);	// shortサイズ32767
	printf("intサイズ%d\n", int_asakuno);	// intサイズ2147483647
	printf("longサイズ%ld\n", long_asakuno);	// longサイズ2147483647
	printf("long longサイズ%lld\n", wlong_asakuno);	// long longサイズ4611686014132420609

	printf("floatサイズ%f\n", float_asakuno);	// floatサイズ340282306073709652508363335590014353408.000000
	printf("doubleサイズ%f\n", double_asakuno);	// doubleサイズ179769300000000004979913091153546431177385676945343486730197993498529636492108312404543796370045487218955201046137662191918513706549560771088224207924409275479864981823815660983343422176365744870072127934490865277449576937261468130920376085948653305075071243237207672347403131791038321491100101082182265602048.000000

//	printf("boolサイズ%s\n", bool_asakuno);	// use of undeclared identifier 'bool_asakuno'; did you mean 'long_asakuno'?
											// format specifies type 'char *' but the argument has type 'long' [-Wformat]
}
