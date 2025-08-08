FROM debian:12

LABEL maintainer="luizbrito.x@gmail.com"

WORKDIR /var/www/html

COPY index.html .

RUN apt update && \
    apt install -y nginx && \
    rm -rf /var/lib/apt/lists/*

HEALTHCHECK --interval=1s CMD [ "curl", "-f", "http://localhost" ]

ENTRYPOINT [ "nginx" ]

CMD [ "-g", "daemon off;" ]
