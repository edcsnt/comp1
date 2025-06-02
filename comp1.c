#include <stdio.h>

int
main(int argc, char *argv[])
{
	char reset[7] = "\e[1;91m";
	if (argc > 1) {
		fprintf(stderr,
		        "%serr: comp1 takes no arguments\e[0m\n",
		        reset);
		return 1;
	}
	fprintf(stderr, "\e[1;95mHello, world!\e[0m\n");
	return 0;
}
