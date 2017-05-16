all: vdev queens

vdev: vdev.c
	aarch64-linux-gnu-gcc -o vdev vdev.c -static -O0

queens: queens.cpp
	aarch64-linux-gnu-g++ -o queens queens.cpp -static -O0 -std=c++11
