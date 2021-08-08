#include <stdio.h>

int main(void)
{
	int asakuno = 20210808;
	const int* const pasakuno = &asakuno;	// note: variable 'pasakuno' declared const here
	printf("pasakuno = %d\n", *pasakuno);
	pasakuno = 20210809;	// cannot assign to variable 'pasakuno' with const-qualified type 'const int *const'
	printf("pasakuno = %d\n", *pasakuno);
}
