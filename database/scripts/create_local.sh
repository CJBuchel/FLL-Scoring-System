sudo docker run -d -it -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=tms -e MONGO_INITDB_ROOT_PASSWORD=tms -e MONGO_INITDB_DATABASE=tms_database --name tms_db -d mongo