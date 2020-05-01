FROM ubuntu:16.04

RUN apt-get update && apt-get install -y unzip wget && apt-get clean

ARG PTTRACKER_VERSION=2.2.6
ENV PTTRACKER_VERSION ${PTTRACKER_VERSION}

RUN mkdir -p /app
WORKDIR /app

RUN wget https://github.com/bTayFla/PtTracker/releases/download/$PTTRACKER_VERSION/PtTracker.v$PTTRACKER_VERSION.Linux.zip
RUN unzip PtTracker.v$PTTRACKER_VERSION.Linux.zip

WORKDIR /app/linux/PtTracker
RUN chmod +x PtTracker

VOLUME /app/linux/PtTracker

CMD ./PtTracker

EXPOSE 3000
