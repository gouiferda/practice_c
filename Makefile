
NAME = app
CC = gcc
FLAGS = -O3 -w -Wall -Werror -Wextra  

all: $(NAME)

$(NAME): main.c
	@echo "$(NAME): Compiling" 
	@$(CC) $(FLAGS) -o out/$(NAME) main.c src/mylib.c

clean:
	@echo "$(NAME): Cleaning" 
	@rm -rf obj/* out/* 

re: clean $(NAME)

run: re
	@echo "$(NAME): Running"
	@echo ""
	@./out/$(NAME)