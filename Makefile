# ==============================
# Makefile for CSLR31 Project
# Team: NumSpace
# Members:
#   Madushyam - 106124066
#   Korupolu Sai Rakesh - 106124060
#   Nitish Kumar Gorai - 106124076
# ==============================

# Compiler and flags
CC = gcc
CFLAGS = -Wall -g -Iinclude

# Directories
SRC_DIR = source
OBJ_DIR = object
INC_DIR = include

# Target executable
TARGET = main

# Source files
SRC = $(SRC_DIR)/main.c \
      $(SRC_DIR)/queue.c \
      $(SRC_DIR)/stack.c \
      $(SRC_DIR)/score.c \
      $(SRC_DIR)/question.c

# Object files (same names but in object folder)
OBJ = $(OBJ_DIR)/main.o \
      $(OBJ_DIR)/queue.o \
      $(OBJ_DIR)/stack.o \
      $(OBJ_DIR)/score.o \
      $(OBJ_DIR)/question.o

# Default rule
all: $(TARGET)

# Link object files to create final executable
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

# Compile each .c file to .o file
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f $(OBJ_DIR)/*.o $(TARGET)

# Run the program
run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run
