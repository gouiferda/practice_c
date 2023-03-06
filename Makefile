
NAME = practice

CC = gcc
FLAGS = -O3 -w -Wall -Werror -Wextra
HEADERS_DIRECTORY = ./inc/
HEADERS = ./inc/mylib.h
INCLUDES = -I$(HEADERS_DIRECTORY) -I $(HEADERS) 
SOURCES_DIRECTORY = ./src/
SOURCES_LIST = main.c functions.c


SOURCES = $(addprefix $(SOURCES_DIRECTORY), $(SOURCES_LIST))
OBJECTS_DIRECTORY = objects/
OBJECTS_LIST = $(patsubst %.c, %.o, $(SOURCES_LIST))
OBJECTS	= $(addprefix $(OBJECTS_DIRECTORY), $(OBJECTS_LIST))

all: $(NAME)

$(NAME): $(OBJECTS_DIRECTORY) $(OBJECTS)
	@$(CC) $(FLAGS) $(INCLUDES) $(OBJECTS) -o $(NAME)
	@echo "$(NAME):		Compiling"

$(OBJECTS_DIRECTORY):
	@mkdir -p $(OBJECTS_DIRECTORY)

$(OBJECTS_DIRECTORY)%.o : $(SOURCES_DIRECTORY)%.c $(HEADERS)
	@$(CC) $(FLAGS) -c $(INCLUDES) $< -o $@


clean:
	@rm -rf $(OBJECTS_DIRECTORY)
	@echo "$(NAME):		Cleaning"

fclean: clean
	@rm -f $(NAME)

re: 
	@$(MAKE) fclean
	@$(MAKE) all