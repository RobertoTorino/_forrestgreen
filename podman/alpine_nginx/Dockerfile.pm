FROM docker.io/library/alpine:latest
LABEL "copyright"="&copy 2023 Philip aka RobertoTorino"
LABEL version="1.0"
LABEL description="podman"
RUN apk update && apk add nginx && apk add nano && mkdir -p /run/nginx && apk add curl shadow bind-tools tcpdump
RUN apk add openrc --no-cache && apk add libstdc++
RUN apk add --upgrade podman-docker
RUN apk add --update nodejs npm
RUN apk add --update npm
EXPOSE 80/tcp
COPY nginx.conf /etc/nginx
COPY . /etc/nginx/html
CMD ["nginx", "-g", "daemon off;"]
HEALTHCHECK --interval=1m --timeout=3s CMD curl -f http://localhost/ || exit 1
