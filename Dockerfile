FROM ubuntu:latest

WORKDIR /home/environment

COPY ./external /home/environment/external

RUN apt update && apt install -y build-essential cmake pkg-config libturbojpeg0-dev libglfw3-dev libusb-1.0-0-dev libopencv-dev

RUN cd /home/environment/external/libfreenect2/ && mkdir build && cd build && cmake .. && make install
