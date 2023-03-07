
NAME = app
CC = gcc
FLAGS = -O3 -w -Wall -Werror -Wextra 
HDRS = src/mylib.h

all: $(NAME)

$(NAME): main.c src/mylib.h
	@$(CC) $(FLAGS) -o out/$(NAME) main.c src/mylib.c
	@echo "$(NAME): Compiling" 

clean:
	@rm -rf obj/* out/* 
	@echo "$(NAME): Cleaning" 

re: clean $(NAME)

run: re
	@echo "$(NAME): Running"
	@./out/$(NAME)