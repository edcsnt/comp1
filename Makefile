include config.mk

OBJ = comp1.o
BIN = comp1

all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(OBJ)

check: $(BIN)
	./$(BIN)
	rm $(BIN) $(OBJ)

clean:
	rm -f $(BIN) $(OBJ)
