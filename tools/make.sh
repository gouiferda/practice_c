#!/bin/sh

rm -rf out/*
rm -rf obj/*
rm -rf *.o
gcc -O3 -w -Wall -Werror -Wextra -c -g src/mylib.c -o obj/mylib.o
gcc -O3 -w -Wall -Werror -Wextra -c -g main.c obj/mylib.o -o obj/main.o
gcc -O3 -w -Wall -Werror -Wextra -o out/app obj/main.o obj/mylib.o
