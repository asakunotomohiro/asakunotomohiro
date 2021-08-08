#include <stdio.h>

int main(void)
{
	int asakuno = 20210808;
	const int* const pasakuno = &asakuno;
//	const *int const pasakuno = &asakuno;	// expected identifier or '('
//	const int const *pasakuno = &asakuno;	// duplicate 'const' declaration specifier [-Wduplicate-decl-specifier]
	printf("pasakuno = %d\n", *pasakuno);	// pasakuno = 20210808
	asakuno = 20210809;
	printf("pasakuno = %d\n", *pasakuno);	// pasakuno = 20210809
}
