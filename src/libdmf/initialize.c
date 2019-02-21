/*=============================================================================
 * Name        : initialize.c
 * Author      : Paul Webster
 * Version     : 1.0
 * Copyright   : Copyright (C) 2018-2019
 *============================================================================*/

#include <crtdefs.h>
#include <stdio.h>

/*=============================================================================
 * dmf_initialize()
 *============================================================================*/
int dmf_initialize() {
	puts("Library Initialization Successful");
	return 0;
}

/*=============================================================================
 * dmf_is64bit()
 *============================================================================*/
int dmf_is64bit() {
	int reg_size = sizeof(size_t);
	if (reg_size == 8)
		puts("[Running 64 bit mode]");
	else if (reg_size == 4)
		puts("[Running 32 bit mode]");
	printf("sizeof(int) [%d]\n", (int) sizeof(int));
	printf("sizeof(long) [%d]\n", (int) sizeof(long));
	return (reg_size == 4);
}

