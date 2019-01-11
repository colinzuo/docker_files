export grep_key=colin_mongo_database

sudo docker exec -it `sudo docker ps | grep $grep_key| awk ' { print $1 }'` bash