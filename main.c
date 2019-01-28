#include <HsFFI.h>
#include <stdio.h>

/* auto-generated at compilation time */
#include "hello_stub.h"

int main(int argc, char **argv)
{
	long long x;

	hs_init(&argc, &argv);

	puts("First, the current directory.");
	printDir();

	printf("Now enter a number: ");
	scanf("%lld", &x);
	printf("%lld! = %lld\n", x, fact(x));

	hs_exit();
	return 0;
}
