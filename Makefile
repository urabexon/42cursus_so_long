# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hurabe <hurabe@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/01 21:07:35 by hurabe            #+#    #+#              #
#    Updated: 2024/09/05 21:37:21 by hurabe           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = so_long
SRCS = main.c so_long.c

CC = cc
CFLAGS = -Wall -Wextra -Werror 

LIB = ./libft/libft.a
OBJS = $(SRCS:%.c=%.o)
AR = ar

all: $(NAME)

clean:
	rm -f $(OBJS)


$(NAME): $(OBJS)
	@make -C mlx_linux
	@make -C libft
	

nm:
	norminette -R CheckForbiddenSourceHeader $(SRCS)
	norminette -R CheckDefine *.h

re:
	fclean all

.PHONY: all clean fclean re bonus