FROM debian:bookworm

RUN apt update

RUN apt install mingw-w64 -y

RUN apt install scons -y

RUN scons --version
