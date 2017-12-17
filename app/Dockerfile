FROM ubuntu
# ubuntu setup
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nodejs -y && apt-get install npm -y
# install curl for n
RUN apt-get install curl -y
# install git
RUN apt-get install git-all -y
# obtain latest stable version of node
RUN npm cache clean -f
RUN npm install -g n
RUN n stable
# clone repository
RUN git clone https://github.com/kulgee001/UserManager
# setup working directory
WORKDIR /app
RUN npm install
# expose port
EXPOSE 8080
