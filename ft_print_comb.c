/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_comb.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sgouifer <sgouifer@42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/06 16:55:54 by sgouifer          #+#    #+#             */
/*   Updated: 2023/03/06 23:16:59 by sgouifer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "unistd.h"

void ft_putchar(char c){
	write(1, &c, 1);
}

void ft_print_comb(void){
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

int main(int ac, char **av){
	ft_print_comb();
	return (0);
}
