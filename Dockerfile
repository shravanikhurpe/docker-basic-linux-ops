FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    nano \
    iputils-ping \
    tree

RUN mkdir /demo && echo "Hello from inside Docker!" > /demo/message.txt

CMD ["/bin/bash"]
