#!/bin/bash
list_containers=$(docker ps -q)

for containerid in $list_containers
do
   docker exec -u 0 -d $containerid service ssh start 
   docker exec -u 0 -d $containerid service cron start 
done
