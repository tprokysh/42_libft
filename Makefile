# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tprokysh <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/23 14:56:51 by tprokysh          #+#    #+#              #
#    Updated: 2018/11/12 11:46:41 by tprokysh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Wextra -Werror

SRC_C = ft_isalpha.c ft_lstmap.c ft_memset.c ft_striter.c ft_strncpy.c ft_strtrim.c ft_isascii.c ft_lstnew.c ft_putchar.c ft_strcat.c ft_striteri.c ft_strnequ.c ft_tolower.c ft_isdigit.c ft_memalloc.c ft_putchar_fd.c ft_strchr.c ft_strjoin.c ft_strnew.c ft_toupper.c ft_isprint.c ft_memccpy.c ft_putendl.c ft_strclr.c ft_strlcat.c ft_strnstr.c ft_wordlen.c ft_atoi.c ft_itoa.c ft_memchr.c ft_putendl_fd.c ft_strcmp.c ft_strlen.c ft_strrchr.c ft_bzero.c ft_lstadd.c ft_memcmp.c ft_putnbr.c ft_strcpy.c ft_strmap.c ft_strrev.c ft_lstdel.c ft_memcpy.c ft_putnbr_fd.c ft_strdel.c ft_strmapi.c ft_strsplit.c ft_wordcount.c ft_lstdelone.c ft_memdel.c ft_putstr.c ft_strdup.c ft_strncat.c ft_strstr.c ft_isalnum.c ft_lstiter.c ft_memmove.c ft_putstr_fd.c ft_strequ.c ft_strncmp.c ft_strsub.c ft_swapchar.c ft_swapint.c

SRC_O = $(SRC_C:.c=.o)

%.o: %.c libft.a
	gcc $(FLAGS) -o $@ -c $<

all: $(NAME)

$(NAME): $(SRC_O)
	ar rc $(NAME) $(SRC_O)

clean:
	rm -f $(SRC_O)

fclean: clean
	rm -f $(NAME)

re: fclean all
