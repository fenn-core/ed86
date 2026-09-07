global sys_read
global sys_write
global sys_close
global sys_exit


section .text

; ssize_t read(int fd, void *buf, size_t count);
sys_read: 
	xor eax, eax
	syscall 
	ret


; int close(int fd);
sys_write:
	mov eax, 1
	syscall
	ret


; int close(int fd);
sys_close: 
	mov eax, 3 
	syscall
	ret


; int openat(int dirfd, const char *path, int flags, mode_t mode);
file_open_ro: 
	mov eax, 257
	mov r10, rcx
	syscall
	ret	


; void exit(int status);
sys_exit: 
	mov eax, 60
	syscall 

