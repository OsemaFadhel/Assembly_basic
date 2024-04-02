
all: *.asm
	nasm -f elf64 -o echo.o echo.asm
	ld -o echo echo.o
	@echo "\033[0;32m"
	@echo "Echo! compiled successfully"
	@echo "\033[0m"

clean:
	rm -f echo.o echo

fclean: clean

re: fclean all

run: all
