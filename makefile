CC=g++

OBJ_FLAGS=-Wall
BIN_FLAGS=-static -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -static-libstdc++

bin/hello.exe: obj/hello.o
	@echo "Building Executable File"
	@${CC} -o bin/hello.exe obj/hello.o ${BIN_FLAGS}

obj/hello.o: src/hello.cc
	@echo "Building Object File"
	@${CC} -c -o obj/hello.o src/hello.cc ${OBJ_FLAGS}

clean:
	@echo "Cleaning Project"
	@rm -f bin/*
	@rm -f obj/*
