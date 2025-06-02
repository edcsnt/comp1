#include <stdio.h>

#define RST "\e[0m"

int
main(int argc, char *argv[])
{
	if (argc > 1) {
		fprintf(stderr,
		        "\e[1;91merr: comp1 takes no arguments"RST"\n");
		return 1;
	}
	fprintf(stderr, "\e[1;95mHello, world!"RST"\n");
	return 0;
}
