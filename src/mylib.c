#include "unistd.h"

void ft_putchar(char c){
	write(1, &c, 1);
}

void ft_print_comb(){
	int i = 0;
	int num1 = 0;
	int num2 = 0;
	int num3 = 0; 
	int cond1 = 0;
	int cond2 = 0;

	while(i < 790){ 
		num1 = (i % 1000) / 100;
		num2 = (i % 100) / 10;	
		num3 = i % 10;
		cond1 = (num1 != num2 && num1 != num3 && num2 != num3);
		cond2 = (num1 < num2 && num2 < num3 && num1 < num3);
		if (cond1 && cond2){
			ft_putchar(num1 + '0');
			ft_putchar(num2 + '0');
			ft_putchar(num3 + '0');
			if (i < 789){
				ft_putchar(',');	
				ft_putchar(' ');
			}
		}
		i++;
	}
}

size_t ft_strlen(const char *str){
	size_t i = 0;
	while (str[i] != '\0')
	{
		i++;
	}
	return i;
}

void ft_putstr(const char *str){
	size_t len = ft_strlen(str);
	int i = 0;
	while (i < len){
		ft_putchar(str[i]);
		i++;
	}
}

void test(){
	ft_putstr("soufiane\n");
}