# Which c compiler and any specifications
GCC = g++ -std=c++11

# Flags for compiler
WFLAGS = -Wall  # Prompts warnings for easily fixable sus code
SYMFLAGS = -g   # Debug symbols for gdb

# Brevity's sake
CFLAGS = $(WFLAGS) $(SYMFLAGS)

# Name of your program executable
PROGRAM = prog

# Source code, i.e. all the c files in the directory
CSRCS = $(wildcard *.c)

# Brevity's sake
SRCS = $(CSRCS)

# Object files to be created from their respective c files
OBJS = $(CSRCS:.c=.o)

# Default make target, i.e. create the executable for your program
all: $(PROGRAM)

# Program executable dependent on object files from each c src, compiles them
$(PROGRAM): $(OBJS)
	$(GCC) -o $@ $(OBJS) $(CFLAGS)

# The following are targets for convenience, e.g. you can type "make valgrind" to
# compile (if needed) then run valgrind on your created executable and so forth

# Runs the executable
test: $(PROGRAM)
	./$(PROGRAM)

# Runs gdb on the executable
gdb: $(PROGRAM)
	gdb ./$(PROGRAM)

# Runs valgrind on the executable
valgrind: $(PROGRAM)
	valgrind --leak-check=yes ./$(PROGRAM)

# Removes all object files and executable from the directory
clean:
	-rm -f $(OBJS) $(PROGRAM)
