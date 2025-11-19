# Makefile for CSE233 - Assignment 2

# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c99

# Executables
EXEC_FORK = process_creation
EXEC_LINKER = output_program
EXEC_LOADER = simple_program

# Source files
SRC_FORK = process_creation.c
SRC_LINKER = file1.c file2.c
SRC_LOADER = simple_program.c

# Phony targets
.PHONY: all run clean

# Default target: compile all programs
all: $(EXEC_FORK) $(EXEC_LINKER) $(EXEC_LOADER)

# Rule for process_creation
$(EXEC_FORK): $(SRC_FORK)
	$(CC) $(CFLAGS) $< -o $@

# Rule for linker example
$(EXEC_LINKER): $(SRC_LINKER)
	$(CC) $(CFLAGS) $(SRC_LINKER) -o $@

# Rule for loader example
$(EXEC_LOADER): $(SRC_LOADER)
	$(CC) $(CFLAGS) $< -o $@

# Run all programs
run: $(EXEC_FORK) $(EXEC_LINKER) $(EXEC_LOADER)
	@echo "--- Running $(EXEC_FORK) (fork example) ---"
	./$(EXEC_FORK)
	@echo ""
	@echo "--- Running $(EXEC_LINKER) (linker example) ---"
	./$(EXEC_LINKER)
	@echo ""
	@echo "--- Running $(EXEC_LOADER) (loader example) ---"
	./$(EXEC_LOADER)
	@echo ""
	@echo "--- Inspecting $(EXEC_LOADER) with ldd ---"
	ldd ./$(EXEC_LOADER)

# Clean up compiled files
clean:
	rm -f $(EXEC_FORK) $(EXEC_LINKER) $(EXEC_LOADER)
	@echo "Cleaned up executables."
