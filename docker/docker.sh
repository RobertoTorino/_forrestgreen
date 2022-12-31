#!/bin/bash

docker pull docker.io/library/alpine:latest
docker stop alpine
docker rm alpine
docker rmi docker.io/library/alpine:current
docker tag docker.io/library/alpine:latest docker.io/library/alpine:current
docker run -d --name alpine docker.io/library/alpine


#1. Pull latest image
#docker pull docker.io/alpine:latest
#We assume that a more recent image has been built and pushed to a registry.
#If the image hasn't been tagged, this will result in two new images in the docker images list: one with <none> tag, and one with latest.
#They'll both share the same IMAGE ID.
#If there's a previous version of this image tagged with latest, it will be untagged.

#2. Stop the running container
#docker stop forrestgreen
#Stop the running instance of alpine.
#This assumes that we gave the image that name last time it was run.

#3. Remove stopped container
#docker rm forrestgreen
#Now that the container is stopped, it's safe to remove it.
#This is cleanup step #1. Also, without this step, we wouldn't be able to give the name alpine to a different container.

#4. Remove image behind stopped container
#docker rmi docker.io/alpine:current
#Now Docker will let us remove the image behind the container we just stopped and removed.
#This assumes we've previously tagged it with current.
#We need a tag other than latest to be able to differentiate between the version of the app we're getting rid of, and the one we're bringing in.

#5. Tag the newly downloaded image
#docker tag docker.io/alpine:latest docker.io/alpine:current
#Now that the current tag is nonexistent, we tag the downloaded image with current, so that we can identify it next time around.
#Until step 1 of our next upgrade, the current and latest tags will have the same IMAGE ID.

#6. Run the new container
#docker run -d --name forrestgreen docker.io/alpine:latest
#Run the image, being sure to --name it alpine.
