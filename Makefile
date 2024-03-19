CC = cc

NAME = sb.a

FLAGS = -Wall -Wextra -Werror

SRC = ft_bzero.c \
	  ft_calloc.c \
	  ft_memcpy.c  \
	  ft_memset.c   \
	  ft_strlen.c    \
	  ft_itoa.c    \
	  ft_strdup.c    \
	  sb.c    \

OBJ = $(SRC:.c=.o)


all : $(NAME)

$(NAME) : $(OBJ)
	ar rcs $@ $^

%.o : %.c libft.h stringbuilder.h
	$(CC) $(FLAGS) -c $< -o $@

clean :
	rm -rf $(OBJ)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : clean fclean re all bonus
