# cicd-jenkins-lab

Docker commnads:

List running containers: 
Docker ps

SSH in to container:
docker exec -it <container.id> /bin/bash

SSH in to jenkins container: 
docker exec -it $(docker ps | grep lab_jenkins | awk '{print $1}') /bin/bash

SSH in to jenkins container as root: 
docker exec -u 0 -it $(docker ps | grep lab_jenkins | awk '{print $1}') /bin/bash

Stop op running containers and Delete all containers including not running containers and delete docker images:
sudo docker kill $(docker ps -q) && docker rm $(docker ps -a -q) && docker rmi -f $(docker images -q)
