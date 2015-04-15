Docker for mysql on latest Ubuntu
==============

Requirements
--------------

- docker: version 1.5

Installation
--------------

- Clone project
- Launch build: "docker build -t yougos666/docker-mysql ."

Launch Docker container
--------------
docker run -d -p 3306:3306 -v ./path/to/database/dump/files:/root/database_dump:rw  yougos666/docker-mysql

Connection database
-------------
You can connect to mysql with:
- login: admin
- password:admin
- dabatase_name : file's name  in /path/to/database/dump/files

Override login & passord
--------------
docker run -d -p 3306:3306 -v ./path/to/database/dump/files:/root/database_dump:rw  yougos666/docker-mysql --env user=value password=value



