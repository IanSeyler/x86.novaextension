; test.asm
; Ian Seyler
; Version - 1.0
; 2022-10-29
; Description - Example x86 Source File

main:
	mov rsi, cpumsg
	call output
	xor eax, eax
	mov rsi, 0x5012
	lodsw
	mov rdi, temp_string
	mov rsi, rdi
	call string_from_int
	call output

cpumsg:			db '[cpu: ', 0
