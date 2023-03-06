
NAME = app
CC = gcc
FLAGS = -O3 -w -Wall -Werror -Wextra
OBJDIR = obj
OBJECTS = $(patsubst %.c, $(OBJDIR)/%.o, $(SRCS))  
LIBS = -lm
HDRS = src/mylib.h

all: $(NAME)

$(NAME):  $(OBJECTS)
	@$(CC) $(FLAGS) $(LIBS) -o $(NAME)
	@echo "$(NAME):		Compiling" 

obj/%.o : %.c $(HDRS)
	@$(CC) -c $(FLAGS) -o $(NAME)

src/mylib.o: src/mylib.c src/mylib.h
	@$(CC) $(FLAGS) src/mylib.c -o src/mylib.o

$(OBJDIR) :
    mkdir -p $@/

clean: 
	@rm -rf $(OBJDIR) $(NAME)