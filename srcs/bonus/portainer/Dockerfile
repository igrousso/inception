FROM debian:bookworm

RUN apt update && apt upgrade -y

RUN apt install -y wget ca-certificates

RUN wget "https://github.com/portainer/portainer/releases/download/2.33.5/portainer-2.33.5-linux-amd64.tar.gz" && \
    tar -xvf portainer-2.33.5-linux-amd64.tar.gz

RUN mv portainer/portainer /usr/bin/ && \
    chmod +x /usr/bin/portainer

RUN mkdir -p data

ENTRYPOINT ["/usr/bin/portainer", "--data=/data"]