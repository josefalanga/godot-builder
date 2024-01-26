FROM debian:bookworm

RUN apt update

RUN apt install mingw-w64 -y

RUN apt install scons -y

RUN apt install pkg-config -y

RUN scons --version
