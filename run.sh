#!/bin/bash

docker-compose up --build -d
for M in $(docker ps -q)
do
  docker network connect bridge $M
done
docker-compose exec plain bash
docker-compose down
