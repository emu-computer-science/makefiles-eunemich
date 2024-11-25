all: makeFileAssignment

makeFileAssignment: driver.o file1.o file2.o
	cc -o makeFileAssignment driver.o file1.o file2.o

driver.o: driver.c
	cc -c driver.c -o driver.o

file1.o: file1.c
	cc -c file1.c -o file1.o

file2.o: file2.c
	cc -c file2.c -o file2.o

clean:
	rm -f driver.o file1.o file2.o makeFileAssignment