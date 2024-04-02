
all: *.asm
	nasm -f elf64 -o Hello_world.o Hello_world.asm
	ld -o Hello_world Hello_world.o
	@echo "\033[0;32m"
	@echo "Hello World! compiled successfully"
	@echo "\033[0m"

clean:
	rm -f Hello_world.o Hello_world

fclean: clean

re: fclean all

run: all
