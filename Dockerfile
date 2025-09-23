FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y cowsay fortune-mod netcat-openbsd && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY wisecow.sh .
RUN chmod +x wisecow.sh

EXPOSE 4499
ENV PATH="/usr/games:${PATH}"
CMD ["./wisecow.sh"]

