/*=============================================================================
 * dmfutil.c
 *============================================================================*/

#include "dmfutil.h"

#include <stdio.h>

#include "../libdmf/libdmf.h"

int main() {
	int status, result, v1 = 3, v2 = 4, v3 = 5;

	// Shared library initialization
	puts("Welcome to DMF");
	status = dmf_initialize();

	// GCC in-line assembler
	result = dmf_add(v1, v2);
	printf("dmf_add(%d, %d) [%d]\n", v1, v2, result);

	// AT&T assembler syntax (asmmath.s)
	result = asm_add(v1, v2);
	printf("asm_add(%d, %d) [%d]\n", v1, v2, result);

	// Intel assembler syntax (asmmath.s)
	result = asm_add_alt(v1, v2);
	printf("asm_add_alt(%d, %d) [%d]\n", v1, v2, result);

	result = asm_square(v1);
	printf("asm_square(%d) [%d]\n", v1, result);

	return status;
}

