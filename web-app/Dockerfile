FROM ubuntu 
# ubuntu setup
RUN apt-get update -y
RUN apt-get upgrade -y 
RUN apt-get install nodejs -y && apt-get install npm -y 
# install git
RUN apt-get install git-all -y
# obtain latest stable version of node
RUN npm cache clean -f
RUN npm install -g n
RUN n stable 
# setup working directory
# ADD /app /app
WORKDIR /app
RUN npm install
# expose port
EXPOSE 8080
