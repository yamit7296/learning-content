**Run Project in Docker**

1. docker compose build
2. sudo docker compose up postgres redis-cluster kafka-zookeeper kafka-broker
3. npm start


**Restore the DB under docker file**

copy the dump file inside the docker

> docker cp <file>.dump <postgres-image-name>:/tmp/<file>.dump
> docker cp db_credilio_full_2023_10_03_17_33_48.dump credilio-api-postgres-development:/db_credilio_full_2023_10_03_17_33_48.dump
> docker exec -it credilio-api-postgres-development bash


docker cp -r dvdrental a9ddf61d44b2:/tmp/dvdrental

docker exec -i 164bbc3c50de pg_restore -U postgres -C -c -d db_customer < ~/Downloads/db_customer_full_2024_09_17_17_32_07 1.dump
docker exec -it a9ddf61d44b2 pg_restore -U postgres -d dvdrental < restore.sql


**Docker cmd**

1. docker compose build - build the container
2. docker compose up - run the container
3. docker image ls - list all images
4. docker inspect <image-id> - see image detail
5. docker ps - running container
6. docker rm <container-id> - remove container (container should be stop)
7. docker image prune - remove all unused images
8. docker rmi <image-id> - remove specific image (container must be removed before images)
9. docker run -p <system-port>:<code:port> -d -rm <image-id> - container will get removed once it stop
10. docker exec -it credilio-api-redis-cluster-development bash

**Docker Volume**

1. docker run -v /app/data - anonymous volume (data will lose if container is removed)
2. docker run -v data:/app/data - named volume (data persistance)
3. docker run -v /path/to/code:/app/code - bind mount (Don't need to rebuild the image and run container. Directly reflect changes)

