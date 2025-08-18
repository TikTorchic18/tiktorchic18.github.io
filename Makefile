CC = /usr/lib/emscripten/emcc
CFLAGS = -Wall -Werror

ifdef DEBUG
    CFLAGS += -g
else
    CFLAGS += -Os
endif

SRCDIR = src
INCDIR = include
OBJDIR = build

SRC = $(wildcard $(SRCDIR)/*.c)
INC = $(wildcard $(INCDIR)/*.h)
OBJ = $(SRC:$(SRC_DIR)/%.c=$(OBJDIR)/%.o)

.PHONY: clean default

default: app.html

app.html: $(OBJ)
	$(CC) -o $@ $^

$(OBJDIR)/%.o: $(SRCDIR)/%.c $(INC) | $(OBJDIR)
	$(CC) -c -o $@ $<

$(OBJDIR):
	mkdir $(OBJDIR)

clean:
	$(RM) -r $(OBJDIR)
	$(RM) app.html
	$(RM) app.js
	$(RM) app.wasm
