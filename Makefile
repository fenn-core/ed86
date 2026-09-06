ASM = nasm
ASMFLAGS = -f elf64

LD = ld 

SRC = src/sys.asm
OBJ = $(SRC:.asm=.o)

TARGET = ed86

$(TARGET): $(OBJ) 
	$(LD) -o $@ $(OBJ)

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@


clean: 
	rm -f $(OBJ) $(TARGET)
	
