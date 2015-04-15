Docker for mysqlon latest Ubuntu
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

