FROM arm32v7/ubuntu
 WORKDIR /
 RUN apt-get update --allow-unauthenticated && \
 apt-get -y upgrade && \
 apt-get -y install nano screen wget --allow-unauthenticated && \
 apt-get clean

 #We run tail on null to keep a process running so we can use the -d flag on run and the container won't exit
 CMD tail -f /dev/null
