CC = gcc
LD = gcc
RM = rm -f
CFLAGS =
EXECNAME = main

SOURCES := $(wildcard *.c)
OBJECTS := $(patsubst %.c,%.o, $(SOURCES))

all: main

.o:
	$(CC) -c $(CFLAGS) $<

$(EXECNAME): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(EXECNAME)

clean:
	$(RM) $(EXECNAME)

distclean: clean
	$(RM) *.o
