FROM debian:bookworm

RUN apt update

RUN apt install mingw-w64 python3 scons lbzip2 xz-utils git pkg-config -y

ADD install-emsdk.sh .