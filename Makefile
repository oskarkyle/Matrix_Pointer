CC = gcc
CFLAG = -Wall -O0 -g 
OBJS  = $(patsubst %.c, %.o, $(wildcard *.c)) 
NAME = start
RM = rm -rf

%.o: %.c 
	$(CC) -c $(CFLAG) -o $@ $<

$(NAME): $(OBJS) 
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS)

run:
	./$(NAME)

clean: 
	$(RM) *.o $(NAME) 