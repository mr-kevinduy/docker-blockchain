FROM ubuntu:16.04

MAINTAINER KevinDuy <mr.kevinduy@gmail.com>

# Install global packages
ADD install.sh /install.sh

RUN chmod +x /*.sh

RUN ./install.sh

RUN usermod -u 1000 www-data

# Setup environment variables
ENV NODE_PATH=/node_modules
ENV PATH=$PATH:node_modules/.bin

WORKDIR /app

CMD [ "node" ]
