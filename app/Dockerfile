#
#
#Dockerfile Api
#
#

FROM ubuntu
MAINTAINER dalsdnjidda@gmail.com

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

# setup working directory
WORKDIR /usr/src/app

# install app dependencies
COPY package*.json ./
RUN npm install --only=production

# bundle app source
COPY . .

# expose port
EXPOSE 3000
CMD [ "npm", "start" ]
