#include <HsFFI.h>
#include <stdio.h>

/* auto-generated at compilation time */
#include "hello_stub.h"

int main(int argc, char **argv)
{
	hs_init(&argc, &argv);

	puts("Hi from C...");
	sayhi();

	hs_exit();
	return 0;
}
