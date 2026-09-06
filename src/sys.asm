global sys_read
global sys_write
global sys_close
global sys_exit


section .text

sys_read: 
	xor rax, rax
	syscall 
	ret


sys_write:
	mov rax, 1
	syscall
	ret


sys_close: 
	mov rax, 3 
	syscall
	ret
	

sys_exit: 
	mov rax, 60
	syscall 

