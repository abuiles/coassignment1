nasm -f elf matrix.asm -g
gcc -shared matrix.o -o libmatrix.so
sudo rm /usr/local/lib/libmatrix.so
sudo rm /usr/lib/libmatrix.so
sudo rm /usr/include/matrix.h
sudo rm /usr/local/include/matrix.h
sudo cp libmatrix.so /usr/local/lib/
sudo cp libmatrix.so /usr/lib/
sudo cp matrix.h /usr/include/
sudo cp matrix.h /usr/local/include/
gcc operaciones.c -lmatrix -std=c99