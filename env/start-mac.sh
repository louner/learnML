#! /bin/sh

#docker-machine is installed

#build docker vm
docker-machine create --driver virtualbox default

#start docker vm
docker-machine start default

#switch to docker vm
eval "$(docker-machine env default)"

#build docker image for happycat env
docker build -t=happycat:v1 ./dockerfile/

#switch into happycat vm
docker run -it happycat:v1
