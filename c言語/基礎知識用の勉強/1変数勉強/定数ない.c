#include <stdio.h>

int main(void)
{
	int asakuno = 20210808;
	int const *pasakuno = &asakuno;
	printf("pasakuno = %d\n", *pasakuno);	// pasakuno = 20210808

	asakuno = 20210809;
	printf("pasakuno = %d\n", *pasakuno);	// pasakuno = 20210809

//	pasakuno = 4649;	// err：incompatible integer to pointer conversion assigning to 'const int *' from 'int' [-Wint-conversion]
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
