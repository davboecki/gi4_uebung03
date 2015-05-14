.PHONY: all clean 

all: main main2 main3 hornermain

main: main.o
	gcc -m64 -o main main.o
	
main.o: main.asm
	nasm -f elf64 -g -F dwarf -l main.lst main.asm

main2: main2.o
	gcc -m64 -o main2 main2.o
	
main2.o: main2.asm
	nasm -f elf64 -g -F dwarf -l main2.lst main2.asm
	
main3: main3.o
	gcc -m64 -o main3 main3.o
	
main3.o: main3.asm
	nasm -f elf64 -g -F dwarf -l main3.lst main3.asm

hornermain: hornermain.o
	gcc -m64 -o hornermain hornermain.o
	
hornermain.o: hornermain.asm
	nasm -f elf64 -g -F dwarf -l hornermain.lst hornermain.asm

clean:
	rm -f main main2 main3 hornermain *.o *.lst