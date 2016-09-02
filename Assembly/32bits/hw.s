		.data
msg:
		.string "Hello World!\n"
msg_end:
		.equ len,msg_end-msg
		.string  "Outra string qualquer...."
tam:
		.byte	 0x0e,0,0,0
		.long	14
		.text
		.globl	_start
_start:
		movl $4, %eax
		movl $1, %ebx
		movl $msg, %ecx
//		movl $len, %edx
		movl $tam-msg, %edx
		int  $0x80
		
		movl $1, %eax
		xorl %ebx, %ebx
		int  $0x80

