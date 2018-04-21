FROM ubuntu:latest

RUN apt-get update && apt-get install -y unzip wget && apt-get clean

ARG PTTRACKER_VERSION=2.1
ENV PTTRACKER_VERSION ${PTTRACKER_VERSION}

RUN mkdir -p /app
WORKDIR /app

RUN wget https://github.com/bTayFla/PtTracker/releases/download/$PTTRACKER_VERSION/PtTracker-v$PTTRACKER_VERSION-linux.zip
RUN unzip PtTracker-v$PTTRACKER_VERSION-linux.zip

WORKDIR /app/PtTracker
RUN chmod +x PtTracker

VOLUME /app/PtTracker

CMD ./PtTracker

EXPOSE 3000