FROM debian:12

LABEL maintainer="luizbrito.x@gmail.com"

WORKDIR /var/www/html

COPY index.html .

RUN apt update && \
    apt install -y nginx && \
    rm -rf /var/list/apt/lists/*

HEALTHCHECK --interval=1s CMD [ "curl teste" ]

ENTRYPOINT [ "nginx" ]

CMD [ "-g", "daemon off;" ]