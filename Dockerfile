FROM docker.io/library/alpine:latest
LABEL "copyright"="&copy 2023 Philip aka RobertoTorino"
LABEL version="1.0"
LABEL description="forrestgreen"
LABEL maintainer="Philip aka RobertoTorino"
COPY . /etc/nginx/html
EXPOSE 80/tcp
RUN apk update && apk add nginx && apk add nano && mkdir -p /run/nginx && apk add curl shadow bind-tools tcpdump
COPY nginx/nginx.conf /etc/nginx
CMD ["nginx", "-g", "daemon off;"]
HEALTHCHECK --interval=1m --timeout=3s CMD curl -f http://localhost/ || exit 1
