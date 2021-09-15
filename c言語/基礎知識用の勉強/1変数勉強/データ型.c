#include <stdio.h>
#include <limits.h>
#include <float.h>

int main(void)
{
	char char_asakuno = CHAR_MAX;
	short short_asakuno = SHRT_MAX;
	int int_asakuno = INT_MAX;
	long long_asakuno = LONG_MAX;
	long long wlong_asakuno = 0;	// これの最大値は？

	float float_asakuno = FLT_MAX;
	double double_asakuno = DBL_MAX;

	// bool型はコンパイルエラーが発生した。
//	bool bool_asakuno = true;	// use of undeclared identifier 'bool'

	printf("charサイズ%d\n", char_asakuno);	// charサイズ127
	printf("shortサイズ%d\n", short_asakuno);	// shortサイズ32767
	printf("intサイズ%d\n", int_asakuno);	// intサイズ2147483647
	printf("longサイズ%ld\n", long_asakuno);	// longサイズ9223372036854775807

	printf("floatサイズ%f\n", float_asakuno);	// floatサイズ340282346638528859811704183484516925440.000000
	printf("doubleサイズ%f\n", double_asakuno);	// doubleサイズ179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.000000

//	printf("boolサイズ%s\n", bool_asakuno);	// use of undeclared identifier 'bool_asakuno'; did you mean 'long_asakuno'?
											// format specifies type 'char *' but the argument has type 'long' [-Wformat]
}
