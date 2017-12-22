bash build.sh
docker run -d -v ./mongodb/data/db:/data/db -p 27017:27017 -p 28017:28017 --name mongodb mongodb mongod --httpinterface
docker run –it -d -p 3000:3000 --name usermanager app
