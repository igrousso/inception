FROM debian:bookworm

RUN apt update && apt upgrade -y

RUN apt install -y wget ca-certificates

RUN wget "https://github.com/portainer/portainer/releases/download/2.33.5/portainer-2.33.5-linux-amd64.tar.gz" && \
    tar -xvf portainer-2.33.5-linux-amd64.tar.gz -C /usr/local/ && \
    rm portainer-2.33.5-linux-amd64.tar.gz

WORKDIR /usr/local/portainer

RUN mkdir -p data

# ENTRYPOINT ["bash", "-c", "tail -f /dev/null"]
ENTRYPOINT ["/usr/local/portainer/portainer", "--data=/data"]