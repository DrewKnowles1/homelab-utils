FROM alpine
COPY ping.sh /app/

RUN apk update
#RUN apt-get install iputils-ping -y
RUN apk add iputils
RUN apk add --no-cache --upgrade bash

ENTRYPOINT ["/bin/bash", "/app/ping.sh"]
