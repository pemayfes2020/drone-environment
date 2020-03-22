FROM ubuntu:latest

ENV TZ='Asia/Tokyo'

WORKDIR /home/environment

COPY ./external /home/environment/external

RUN apt update && apt install -y tzdata

RUN apt install -y build-essential cmake pkg-config libturbojpeg0-dev libglfw3-dev libusb-1.0-0-dev libopencv-dev libboost-dev libboost-system-dev libboost-date-time-dev libeigen3-dev freeglut3-dev 

RUN apt install -y g++-8 && ln -fs /usr/bin/g++-8 /usr/bin/g++

RUN cd /home/environment/external/libfreenect2/ && mkdir build && cd build && cmake .. && make install
