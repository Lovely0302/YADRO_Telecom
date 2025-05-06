FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY section1/script.sh ./script.sh
RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]

