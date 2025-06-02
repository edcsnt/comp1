#include <stdio.h>

int
main(int argc, char *argv[])
{
	if (argc > 1) {
		fprintf(stderr,
		        "\e[1;91merr: comp1 takes no arguments\e[0m\n");
		return 1;
	}
	fprintf(stderr, "\e[1;95mHello, world!\e[0m\n");
	return 0;
}
