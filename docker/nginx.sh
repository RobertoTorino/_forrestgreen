#!/bin/bash

#Use a read-only volume
#For some development applications, the container needs to write into the bind mount so that changes are propagated back to the Docker host.
#At other times, the container only needs read access to the data.
#Multiple containers can mount the same volume.
#You can simultaneously mount a single volume as read-write for some containers and as read-only for others.
#The following example modifies the one above but mounts the directory as a read-only volume,
#by adding ro to the (empty by default) list of options, after the mount point within the container.
#Where multiple options are present, you can separate them using commas.

docker stop nginxdev
docker rm nginxdev
docker run -d \
--name nginxdev \
-v "$PWD":/usr/share/nginx/html \
-v "$PWD"/nginx/nginx.conf:/etc/nginx/nginx.conf:ro \
-p 80:80 -d nginx -g, 'daemon off';

#use docker inspect nginxtest to verify that the read-only mount was created correctly. Look for the Mounts section.
#docker inspect nginxdev
