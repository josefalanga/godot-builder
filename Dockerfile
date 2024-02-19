FROM debian:bookworm

RUN apt update

RUN apt install mingw-w64 python3 scons lbzip2 xz-utils git pkg-config -y

RUN git clone https://github.com/emscripten-core/emsdk.git && cd emsdk && ./emsdk install 1.39.9 && ./emsdk activate 1.39.9

RUN apt install python-is-python3