bash build.sh
docker run -d -p 27017:27017 -p 28017:28017 --name mongodb mongodb mongod --httpinterface
docker run -d -it -p 80:8080 --name app app npm start
