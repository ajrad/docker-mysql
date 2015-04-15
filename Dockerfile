FROM ubuntu:latest

MAINTAINER David Le Riche <david.leriche@openwide.fr>

# Install latest updates and mysql
RUN apt-get update;apt-get upgrade -y; apt-get -y install mysql-client mysql-server curl openssh-client vim touch

# Enable remote access (default is localhost only, we change this
# otherwise our database would not be reachable from outside the container)
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

# Set Standard settings
ENV user admin
ENV password admin
ENV right WRITE

# Install starting script
ADD ./start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

EXPOSE 3306

CMD ["/usr/local/bin/start.sh"]
