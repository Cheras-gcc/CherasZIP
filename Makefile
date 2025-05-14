# Compilador y opciones
CC = gcc
CFLAGS = -Wall -g -Iinclude

# Directorios
SRC_DIR = src
BUILD_DIR = build

# Archivos fuente y objeto
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst $(SRC_DIR)/%.c,$(BUILD_DIR)/%.o,$(SRC))
EXEC = $(BUILD_DIR)/CherasZIP.exe

# Regla principal
all: $(EXEC)

# Enlazado final
$(EXEC): $(OBJ)
	@if not exist $(BUILD_DIR) mkdir $(BUILD_DIR)
	$(CC) $(OBJ) -o $@

# Compilación de cada .c a .o
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@if not exist $(BUILD_DIR) mkdir $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Limpieza
clean:
	@if exist $(BUILD_DIR) rmdir /s /q $(BUILD_DIR)

.PHONY: all clean
