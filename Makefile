CC=gcc 
CFLAGS=-Wall

#all: iterativeTrib recursiveTrib

iterativeTrib: iterativeTrib.c
	$(CC) $(CC_FLAGS) iterativeTrib.c -o iterativeTrib

recursiveTrib: recursiveTrib.c
	$(CC) $(CC_FLAGS) recursiveTrib.c -o recursiveTrib

clean:
	rm -f recursiveTrib
	rm -f iterativeTrib
	rm -f *.o

# run-recursive: recursiveTrib
#     ./recursiveTrib