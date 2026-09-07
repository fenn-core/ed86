global sys_read
global sys_write
global sys_close
global sys_exit


section .text

sys_read: 
	xor eax, eax
	syscall 
	ret


sys_write:
	mov eax, 1
	syscall
	ret


sys_close: 
	mov eax, 3 
	syscall
	ret
	

sys_exit: 
	mov eax, 60
	syscall 

