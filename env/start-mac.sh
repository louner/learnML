#! /bin/sh

docker-machine create --driver virtualbox default
docker-machine start default
eval "$(docker-machine env default)"
docker build -t=happycat:v1 ./dockerfile/
