CC      = clang
CFLAGS  = -std=c23 -g -Wall -Wextra -Wpedantic -Wshadow -Wstrict-prototypes -Wvla
RM      = rm -rf
BUILDDIR  = build/
SRCDIR  = src/
LIBS = lib/

main:  $(SRCDIR)main.c
	$(CC) $(CFLAGS) -o $(BUILDDIR)main $(SRCDIR)main.c $(LIBS)/glad/glad.c  -framework Cocoa -framework OpenGL 
