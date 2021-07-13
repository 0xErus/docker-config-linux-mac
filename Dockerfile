FROM --platform=amd64 ubuntu:latest

# Install major dev tools
RUN apt-get update && apt-get upgrade -y && apt-get install gcc gdb vim wget -y

# Install .bashrc & .vimrc inside container
ADD https://raw.githubusercontent.com/0xErus/configuration-files/main/.bashrc /root/
ADD https://raw.githubusercontent.com/0xErus/configuration-files/main/.vimrc /root/
