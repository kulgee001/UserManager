bash build.sh
docker run -d -v ./mongodb/data/db:/data/db -p 27017:27017 -p 28017:28017 -name=mongodb mongodb mongod --httpinterface
docker run –it -d --link=mongodb:mongodb -p 8080:3000 –name=userManager –v ./app:/usr/src/app –w /usr/src/app app npm start
