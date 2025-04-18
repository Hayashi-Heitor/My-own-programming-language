exec = teste.out
sources = $(wildcard src/*.c)
objects = $(sources:.c=.o)
flags = -g -Wall -Wextra -Werror

$(exec): $(objects)
	gcc $(objects) $(flags) - o $(exec)

%.o: %.c include/%.h
	gcc -c $(flags) $< -o $@

clean: 
	-rm *.out
	-rm * .o
	-rm src/*.o