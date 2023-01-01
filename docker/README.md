# Docker Nginx Image

### Running through Docker

I used an [Alpine Linux](https://www.alpinelinux.org/) image here because of its small footprint compared to all other distros.         
But from what I read around the Globe it has some drawbacks which prevent devs from using Alpine Linux in production environments.      
The most heard drawback is the DNS resolver issues. These issues are due to a bug in musl.      

**Configuration of your Docker file, it uses a very small Alpine Linux image.**
**Place the Docker.file in the root of your project with this content (of course you can adjust everything to your settings):**                

```
FROM docker.io/library/alpine:latest
LABEL "copyright"="&copy 2023 Philip aka RobertoTorino"
LABEL version="1.0"
LABEL description="forrestgreen"
COPY . /etc/nginx/html
EXPOSE 80/tcp
RUN apk update && apk add nginx && apk add nano && mkdir -p /run/nginx && apk add curl shadow bind-tools tcpdump
COPY nginx/nginx.conf /etc/nginx
CMD ["nginx", "-g", "daemon off;"]
HEALTHCHECK --interval=1m --timeout=3s CMD curl -f http://localhost/ || exit 1
```

### Docker commands

| Description                                       | Command(s)                                                           | Info                                                      |
|---------------------------------------------------|----------------------------------------------------------------------|-----------------------------------------------------------|
| build latest image and tag:                       | docker build -t forrestgreen:latest -f Dockerfile .                  |                                                           |
| run:                                              | docker run -p 80:80 forrestgreen:latest                              |                                                           |
| list all existing images:                         | docker images -a                                                     |                                                           |
| list all existing containers:                     | docker ps -a                                                         |                                                           |
| delete single image:                              | docker rmi <image_id>                                                |                                                           |
| stop single container:                            | docker stop <container_id>                                           |                                                           |
| delete single container:                          | docker rm <container_id>                                             |                                                           |
| stop multiple containers:                         | docker stop <container_id1> <container_id2>                          |                                                           |
| delete multiple stopped containers:               | docker rm <container_id1> <container_id2>                            |                                                           |
| delete multiple images:                           | docker rmi <image_id1> <image_id2>                                   |                                                           |
| delete images in a single command:                | docker rmi -f $(docker images -a -q)                                 |                                                           |
| delete containers and images in a single command: | docker rm $(docker ps -a -q) && docker rmi -f $(docker images -a -q) |                                                           |
| prune all containers:                             | docker container prune                                               | remove all stopped containers                             |
| prune all images:                                 | docker image prune                                                   | remove all images                                         |
| prune all volumes:                                | docker volume prune                                                  | remove all volumes                                        |
| prune all networks:                               | docker network prune                                                 | remove all networks                                       |
| system clean:                                     | docker system prune                                                  | clean up all unused containers, networks, images, volumes |
| version info:                                     | docker -v                                                            |                                                           |
| enable debug mode:                                | docker -D                                                            |                                                           |
| view image labels                                 | docker image inspect --format='' <image_id>>                         |                                                           |

```
run app: 
http://127.0.0.1/
```

### Some common errors when running Docker and their solutions

_Error: pull access denied repository does not exist or may require docker login._                                     
To prevent this error, run docker build with -f <Dockerfile                                    
docker build -t alpine:0.0.1 -f Dockerfile.

_Docker: ERROR [internal] load metadata for docker.io_                                    
To prevent this error, in Docker Desktop, navigate to Settings Docker Engine, change buildkit to false in the Docker
daemon configuration file and then click "Apply & Restart". Example:

```shell
{                          
"builder": {                        
"gc": {                             
"defaultKeepStorage": "20GB",                           
"enabled": true                         
}                       
},                          
"experimental": false,                        
"features": {                        
"buildkit": false                       
}                       
}
```

### get the list of dependent child images

```shell
for i in $(docker images -q)
do
docker history -q $i | grep -q <image-id> && docker images | grep $i
done | sort -u
```
