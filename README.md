# docker-configuration
__My docker configuration__

## Install Docker for Mac
  - <https://docs.docker.com/docker-for-mac/>

#### Setting up a shared directory for your container
  - By default any directory under $HOME can be mounted with a container, so you can skip the next steps if the directory you wish to mount is under your $HOME
  - Open the docker desktop app and head to settings (gear/cog located in the top right of the window)
  - Then click on *resources* located in the toolbar on the left side of the window
  - Follow to __advanced__ -> __file sharing__ and then click __+__ to add a shared directory between your host and the container
  
#### Downloading Desired Base Image
  - Head to <https://hub.docker.com/search?q=&type=image> and find your desired docker container image
    - note the image bust be ubuntu amd64 if you want to follow along this setup
  - Download the image using the command: ```docker pull <container>:<latest> --platform <architecture>```

#### Creating custom image based on docker file & base image
  - clone this repo by running ```git clone https://github.com/0xErus/docker-configuration.git```
  - switch into said repo ```cd docker-coniguration```
    - note: if you want to customise the image, feel free to edit the docker file before the next step
  - run this command to build your image using the docker file included in this repository ```docker build -t <image-name> .```

#### Create container based off of previously created image
  - create your container using this command ```docker create -i -t <image-name> --name <container-name> -v <host_dir>:<container-dir> <image-name>``` this command will output a container id
  - you can now start your container by running the following command ```docker start -i <container-id>```
