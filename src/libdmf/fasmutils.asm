;==============================================================================
; fasmutils.asm - FASM assembly code : MS64 COFF
; See https://flatassembler.net/docs.php?article=manual#2.4
;==============================================================================

format MS64 COFF

section '.text'

public fasm_add
fasm_add:
	push    rbp
	mov     rbp, rsp
	mov     dword [rbp + 16], ecx
	mov     dword [rbp + 24], edx
	mov     edx, dword [rbp + 16]
	mov     eax, dword [rbp + 24]
	add     eax, edx
	pop     rbp
	ret

