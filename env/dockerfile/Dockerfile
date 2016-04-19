FROM ubuntu:14.04
MAINTAINER louner <lounera@gmail.com>
RUN apt-get update
RUN apt-get install -y vim htop screen git
RUN apt-get install -y python python-dev python-setuptools python-pip python-nose

RUN cd
RUN if [ ! -a ~/.inputrc ]; then echo "\$include /etc/inputrc" > ~/.inputrc; fi
RUN echo "set completion-ignore-case On" >> ~/.inputrc

RUN apt-get install -y libblas-dev liblapack-dev gfortran libhdf5-dev 
RUN pip install numpy scipy sklearn pandas keras h5py

RUN cd
RUN git clone https://github.com/sparktsao/HappyCat
