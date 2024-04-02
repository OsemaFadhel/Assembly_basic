
all: *.asm
	nasm -f elf64 -o Function_calls.o Function_calls.asm
	ld -o Function_calls Function_calls.o
	@echo "\033[0;32m"
	@echo "Functions! compiled successfully"
	@echo "\033[0m"

clean:
	rm -f Function_calls.o Function_calls

fclean: clean

re: fclean all

run: all
