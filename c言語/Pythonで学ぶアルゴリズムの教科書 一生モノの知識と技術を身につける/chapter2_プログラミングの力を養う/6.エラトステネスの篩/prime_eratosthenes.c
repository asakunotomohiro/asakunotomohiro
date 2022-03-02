#include <stdio.h>

int siftTable()
{
	for( int ii = 0, count = 10; 100 > ii; ii++ ) {
		printf("%3d", ii );
		count--;
		if( count == 0 ) {
			printf("\n");
			count = 10;
		}
	}

	return 0;
}

int main(void)
{
	siftTable();
}


// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=c noexpandtab:
