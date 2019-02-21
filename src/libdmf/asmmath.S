/##############################################################################
// asmmath.s - GNU/GAS 64 bit assembly code
//##############################################################################

.intel_syntax noprefix
	;;; xor eax, eax

.att_syntax prefix

.section .data /* static data - constants */

	module_str:
		.ascii "extmath.s "

	module_str_end:
		.set GSTR_SIZE, module_str_end - module_str

.section .bss /* program data */

	// Reserve 32 bytes of memory for a general work buffer
	.lcomm  buff, 32

	// function prologue
	.macro function name
		.global \name
		\name:
	.endm

	// function epilogue
	.macro return
		retq
	.endm

.section .text /* program code */

# -----------------------------------------------------------------------------
# int asm_add(int v1, int v2)
# -----------------------------------------------------------------------------

function asm_add
	push    %rbp
	mov     %rsp,%rbp
	mov     %ecx, 16(%rbp)
	mov     %edx, 24(%rbp)
	mov     16(%rbp), %edx
	mov     24(%rbp), %eax
	add     %edx,%eax
	pop     %rbp
	return

# -----------------------------------------------------------------------------
# int asm_square(int v1)
# -----------------------------------------------------------------------------

function asm_square
	push   %rbp
	mov    %rsp, %rbp
	mov    %ecx, 16(%rbp)
	mov    16(%rbp), %eax
	imul   16(%rbp), %eax
	pop    %rbp
	return

