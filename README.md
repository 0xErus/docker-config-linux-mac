# docker-configuration
My docker configuration

## Install Docker for Mac
  - <https://docs.docker.com/docker-for-mac/>

### Setting up a shared directory for your container
  - Open the docker desktop app and head to settings (gear/cog located in the top right of the window)
  - Then click on *resources* located in the toolbar on the left side of the window
  - Follow to *advanced* -> *File Sharing*
  - Click on the *+* symbol to add a shared directory between your host and the container
  
#### Installing Desired Container
  - Head to <https://hub.docker.com/search?q=&type=image> and find your desired docker container image
  - Install the container using the command: **docker pull [container]:latest --platform [architecture]**
  -  
