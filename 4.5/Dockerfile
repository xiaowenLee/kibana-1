FROM ubuntu:14.04

MAINTAINER prameswar <engg.pram1@gmail.com>

ENV VERSION=4.5.4

RUN apt-get update && \
  apt-get install -y wget 

RUN wget https://download.elastic.co/kibana/kibana/kibana_${VERSION}_amd64.deb && \
    dpkg -i kibana_${VERSION}_amd64.deb && \
    rm kibana_${VERSION}_amd64.deb 

COPY kibana.yml /opt/kibana/config/kibana.yml
COPY start.sh /start.sh

EXPOSE 5601
RUN  chmod +x /start.sh

ENTRYPOINT  ["/start.sh"]






