#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
	int flags, opt;
	int nsecs, tfnd;
	int i = 0;
	printf("optind:%d\n", optind);

	for(i=0;i<argc;i++){
		printf("%s ", argv[i]);
	}
	printf("\n");
	
	for(i=optind;i<argc;i++){
		printf("%s ", argv[i]);
	}
	printf("\n********************\n");

	nsecs = 0;
	tfnd = 0;
	flags = 0;
	while ((opt = getopt(argc, argv, "nt:d::")) != -1) {
		switch (opt) {
			case 'n':
				flags = 1;
				break;
			case 't':
				nsecs = atoi(optarg);
				tfnd = 1;
				break;
			case 'd':
				printf("d:%s\n", optarg);
				break;
			default: /* '?' */
				fprintf(stderr, "Usage: %s [-t nsecs] [-n] name\n", argv[0]);
				exit(EXIT_FAILURE);
		}
	}

	printf("flags=%d; tfnd=%d; nsecs=%d; optind=%d\n",
			flags, tfnd, nsecs, optind);

	if (optind >= argc) {
		fprintf(stderr, "Expected argument after options\n");
		exit(EXIT_FAILURE);
	}

	printf("name argument = %s\n", argv[optind]);

	/* Other code omitted */

	exit(EXIT_SUCCESS);
}

