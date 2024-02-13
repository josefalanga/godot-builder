FROM debian:bookworm

RUN apt update

RUN apt install mingw-w64 -y

RUN apt install scons -y

RUN apt install pkg-config -y

RUN scons --version

RUN git clone https://github.com/emscripten-core/emsdk.git && cd emsdk && ./emsdk install 1.39.9 && ./emsdk activate 1.39.9

RUN apt install python3 -y
