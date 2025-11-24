FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    nano \
    iputils-ping \
    tree

RUN mkdir /sample && echo "Docker container is running!" > /sample/info.txt

CMD ["/bin/bash"]
