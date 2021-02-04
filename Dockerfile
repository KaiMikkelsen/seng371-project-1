FROM ubuntu:latest

RUN apt update && apt install  openssh-server sudo -y

RUN sudo apt-get update




RUN sudo apt update

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 
RUN  echo 'test:test' | chpasswd

RUN service ssh start

EXPOSE 22 3000

# update 
RUN apt-get update
# install curl 
RUN apt-get install -y curl
# get install script and pass it to execute: 
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
# and install node 
RUN apt-get install -y nodejs
# confirm that it was successful 
RUN node -v
# npm installs automatically 
RUN apt install -y vim

RUN apt-get install -y npm

RUN npm config set registry="http://registry.npmjs.org/"
RUN npm install forever


RUN npm -v


CMD ["/usr/sbin/sshd","-D"]





