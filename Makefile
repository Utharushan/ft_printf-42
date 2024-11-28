# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tuthayak <tuthayak@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/28 15:45:45 by tuthayak          #+#    #+#              #
#    Updated: 2024/11/28 15:45:46 by tuthayak         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC		= src/ft_printf.c src/ft_printf_utils.c
NAME	= libftprintf.a
CC		= cc
CFLAGS	= -Wall -Wextra -Werror
RM		= rm -rf
AR		= ar rcs

OBJ		= $(SRC:.c=.o)

%.o: %.c
			$(CC) $(CFLAGS) -c $< -o $@

$(NAME):	$(OBJ)
			$(AR) $(NAME) $(OBJ)

all:		$(NAME)

clean:
			$(RM) $(OBJ)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all
