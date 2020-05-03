# pttracker-dc

This is a clone of Jakkie! All creedits to Jakkie!

Donations to Jakkie are welcome `https://hub.docker.com/r/jakkie/pttracker-docker`

Pt Tracker Docker

[![Docker Pulls](https://img.shields.io/docker/pulls/moli87/pt-tracker-dc.svg?label=pulls&logo=docker&logoColor=FFFFFF)](https://hub.docker.com/r/moli87/pt-tracker-dc/)
[![Docker Stars](https://img.shields.io/docker/stars/moli87/pt-tracker-dc.svg?label=stars&logo=docker&logoColor=FFFFFF)](https://hub.docker.com/r/moli87/pt-tracker-dc/)
[![](https://images.microbadger.com/badges/image/moli87/pt-tracker-dc.svg)](https://microbadger.com/images/moli87/pt-tracker-dc/ "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/moli87/pt-tracker-dc.svg)](https://microbadger.com/images/moli87/pt-tracker-dc/ "Get your own version badge on microbadger.com")
[![Docker Build Status](https://img.shields.io/docker/cloud/build/moli87/pt-tracker-dc.svg?label=build&logo=docker&logoColor=FFFFFF)](https://hub.docker.com/r/moli87/pt-tracker-dc/)

Compatible with Pt Tracker version : v2.2.6
`https://github.com/bTayFla/PtTracker/wiki`

## Install Docker

- Windows `https://docs.docker.com/toolbox/toolbox_install_windows/`

- Mac OS `https://docs.docker.com/docker-for-mac/install/`

- Linux Ubuntu `https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce`

## Quick Guide

### Run latest Pt Tracker version

- download the configure file from `https://github.com/MoeJoe87/pttracker-dc/blob/master/PtTracker.json`

- Edit your config in PtTracker.json. See for `https://github.com/bTayFla/PtTracker/wiki/Linux` reference.

- To create Container just replace `/path/to/""`  with the full path where the PtTracker.json file is.

### docker

```bash
docker create \
  --name=pt-tracker \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Zurich \
  -p 3000:3000 \
  -v /path/to/PtTracker.json:/app/linux/PtTracker/PtTracker.json \
  -v /path/to/PtTracker.db:/app/linux/PtTracker/pttracker.db \
  -v /path/to/PtTracker.db-journal:/app/linux/PtTracker/pttracker.db-journal \
  -v /path/to/PtTracker.log:/app/linux/PtTracker/PtTracker.log \
  --restart unless-stopped \
  moli87/pt-tracker-dc
```

### docker-compose

Compatible with docker-compose v3 schemas

```bash
---
version: '3'

services:
  profittrailer:
    image: moli87/pt-tracker-dc
    container_name: pt-tracker
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Zurich
    volumes:
      - ./PtTracker.json:/app/linux/PtTracker/PtTracker.json
      - ./PtTracker.db:/app/linux/PtTracker/pttracker.db
      - ./PtTracker.db-journal:/app/linux/PtTracker/pttracker.db-journal
      - ./PtTracker.log:/app/linux/PtTracker/PtTracker.log
    restart: unless-stopped
    ports:
      - "3000:3000"
```
If you like it, support appreciated!

BTC: 17cqx7P6aRn9egZfSkzbyNqKjd3Xm6W9T4

BCH: qq020gjmrd83rfaut4fzrncc8ejlv32q4yuhnzgc5c

BNB: bnb1m6fn76pplwf3pwem62ghcpryruu0kmnmrmsq22

ETH: 0x4B2895914147787d0C15868F86c460aF6Fb45D91

LTC: LbvRzuBrF4eVrEC2zkHveQAxEyfaNBAa3j

XMR: 45sS3GEkui1LosH14zvnvwChqEy8sK4pJXWAax1VvSD9BSN9qUsAuzsVwoTrvMjFndS9LpYpGBpCwY9JxifzxAW16wWsAAY
