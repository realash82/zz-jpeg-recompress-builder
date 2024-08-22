FROM debian:bullseye-slim
WORKDIR /build

RUN apt-get update
RUN apt-get install -y build-essential autoconf pkg-config nasm libtool gcc-9 unzip git

COPY . .

RUN ./build.sh