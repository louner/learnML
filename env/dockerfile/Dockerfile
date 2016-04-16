FROM ubuntu:14.04
MAINTAINER louner <lounera@gmail.com>
RUN apt-get update
RUN apt-get install -y vim htop screen git
RUN apt-get install -y python python-dev python-setuptools python-pip python-nose

RUN cd
RUN if [ ! -a ~/.inputrc ]; then echo "\$include /etc/inputrc" > ~/.inputrc; fi
RUN echo "set completion-ignore-case On" >> ~/.inputrc

RUN apt-get install -y libblas-dev liblapack-dev gfortran 
RUN pip install numpy scipy sklearn pandas keras

RUN cd
RUN git clone https://github.com/sparktsao/HappyCat
