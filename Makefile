CC = /usr/lib/emscripten/emcc
CFLAGS = -Wall -Werror

ifdef DEBUG
    CFLAGS += -g
else
    CFLAGS += -Os
endif

SRCDIR = src
INCDIR = include
BUILDDIR = build

SRC = $(wildcard $(SRC_DIR)/*.c)
INC = $(wildcard $(INC_DIR)/*.h)
OBJ = $(SRC:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)

.PHONY: clean default

default: app.html

app.html: $(OBJ)
	$(CC) -o $@ $^

$(BUILDDIR)/%.o: $(SRCDIR)/%.c $(INC)
	$(CC) -c -o $@ $<
