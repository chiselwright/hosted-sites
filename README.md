# README

* Information at [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy)

This did something kinda helpful:

    docker run -d -p 8069:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy

Listing services in the docker-compose file:

    grep '^  [-a-z]\+:' docker-compose.yml

Rebuilding a service:

    export svcname=net-chizography-preview
    docker-compose build --no-cache ${svcname} && docker-compose up -d ${svcname}
