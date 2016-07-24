FROM java:latest
MAINTAINER Brian Zhao version 0.1

#https://stackoverflow.com/questions/7739645/install-mysql-on-ubuntu-without-password-prompt
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y upgrade


WORKDIR /root
COPY entrypoint.sh /root/entrypoint.sh
COPY target/universal/tldwredirect-1.0-SNAPSHOT.zip /root/tldwredirect-1.0-SNAPSHOT.zip
RUN unzip tldwredirect-1.0-SNAPSHOT.zip && rm *.zip

EXPOSE 443
CMD ["/bin/bash", "entrypoint.sh"]