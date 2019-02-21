/*=============================================================================
 * dmfutil.c
 *============================================================================*/

#include "dmfutil.h"

#include <stdio.h>

#include "../libdmf/libdmf.h"

int main() {
	int status, result, v1 = 2, v2 = 3;
	puts("Welcome to DMF");
	status = dmf_initialize();

	result = dmf_add(v1, v2);
	printf("dmf_add(%d, %d) [%d]\n", v1, v2, result);

	result = asm_add(v1, v2);
	printf("asm_add(%d, %d) [%d]\n", v1, v2, result);

	result = asm_square(v1);
	printf("asm_square(%d) [%d]\n", v1, result);

	return status;
}

