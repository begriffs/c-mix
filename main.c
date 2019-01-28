#include <HsFFI.h>
#include <stdio.h>

/* auto-generated at compilation time */
#include "hello_stub.h"

int main(int argc, char **argv)
{
	hs_init(&argc, &argv);

	long long x;

	printf("Enter a number: ");
	scanf("%lld", &x);
	printf("%lld! = %lld\n", x, fact(x));

	hs_exit();
	return 0;
}
