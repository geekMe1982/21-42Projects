NAME = cub3D

CC = gcc

CFLAGS = -Wall -Wextra -Werror

MLX = libmlx.dylib

MMS = minilibx_mms

LXFLAGS = -lmlx -framework OpenGL -framework AppKit -lz

HEADER = cub3d.h

SRC = main

OBJ = $(.c=.o)


.PHONY: all clean fclean re bonus

$(NAME): $(MLX) $(OBJ)
	@echo "\n\033[0;33mCompiling..."
	$(CC) $(SRC) -o $(NAME) -I $(MMS) $(LXFLAGS) $(OBJ)
	@echo "\033[0m"

clean:
	@echo "\033[0;31mCleaning..."
	rm -rf $(OBJ)

fclean: clean
		@echo "\020[0;31mRemoving executable..."
		rm -f $(NAME)
		@echo "\033[0m"

re: fclean all