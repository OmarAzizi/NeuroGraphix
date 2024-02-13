CC = gcc
CFLAGS = -Wall -Wextra
LIBS = -lSDL2
INCLUDES = -I/usr/include/SDL2
SRCS = visual.c
OBJS = $(SRCS:.c=.o)
MAIN = visual



$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) *.o *~ $(MAIN)
