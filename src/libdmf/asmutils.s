//==============================================================================
// asmutils.s - asmmath.s - GNU/GAS 64 bit assembly code.
//==============================================================================

// function prologue
.macro function name
	.global \name
	\name:
.endm

// function epilogue
.macro return
	retq
.endm

.section .data /* static data - constants */

	module_str:
		.ascii "asmutils.s "

	module_str_end:
		.set GSTR_SIZE, module_str_end - module_str

.section .bss /* program data */

	// Reserve 32 bytes of memory for a general work buffer
	.lcomm  buff, 32

.section .text /* program code */

.intel_syntax noprefix /* Intel assembler syntax */

# -----------------------------------------------------------------------------
# int64_t asm_add_alt(int64_t v1, int64_t v2)
# -----------------------------------------------------------------------------
function asm_add_alt
	push    rbp
	mov     rbp, rsp
	mov     [rbp + 16], ecx
	mov     [rbp + 24], edx
	mov     edx, [rbp + 16]
	mov     eax, [rbp + 24]
	add     eax, edx
	pop     rbp
	return

 .att_syntax prefix /* at&t assembler syntax */

# -----------------------------------------------------------------------------
# int64_t asm_add(int64_t v1, int64_t v2)
# -----------------------------------------------------------------------------

function asm_add
	push    %rbp
	mov     %rsp, %rbp
	mov     %ecx, 16(%rbp)
	mov     %edx, 24(%rbp)
	mov     16(%rbp), %edx
	mov     24(%rbp), %eax
	add     %edx, %eax
	pop     %rbp
	return

# -----------------------------------------------------------------------------
# int64_t asm_square(int64_t v1)
# -----------------------------------------------------------------------------

function asm_square
	push   %rbp
	mov    %rsp, %rbp
	mov    %ecx, 16(%rbp)
	mov    16(%rbp), %eax
	imul   16(%rbp), %eax
	pop    %rbp
	return

