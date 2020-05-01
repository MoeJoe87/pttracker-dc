# pttracker-docker

Clone from Jakkie! All credits go to Jakkie!

Pt Tracker Docker

Compatible with Pt Tracker version : v2.2.5
`https://github.com/bTayFla/PtTracker/wiki`

## Install Docker

- Windows `https://docs.docker.com/toolbox/toolbox_install_windows/`

- Mac OS `https://docs.docker.com/docker-for-mac/install/`

- Linux Ubuntu `https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce`

## Quick Guide

### Run latest Pt Tracker version

- download the configure file from `https://github.com/jakkie/pttracker-docker/blob/master/PtTracker.json`

- Edit your config in PtTracker.json. See for `https://github.com/bTayFla/PtTracker/wiki/Linux` reference.

- To Run Container and replace <your path> with the full path where the PtTracker.json file is.

```bash
docker run -d -p 3000:3000 -v <your path>/PtTracker.json:/app/linux/PtTracker/PtTracker.json jakkie/pttracker-docker
```

- After Pt Tracker is running browse to the url example `http://your-ip:3000`

```bash
http://localhost:3000
```

## DIY Guide

### Installing the container

- Build the container from the Dockerfile.

```bash
docker build -t pttracker .
```

- To build with a specific Pt Tracker version from version v2.2.5 and later. Just change the Pt Tracker version to the version you want. To see which versions are available go to `https://github.com/bTayFla/PtTracker/releases`

```bash
docker build -t pttracker --build-arg PTTRACKER_VERSION=2.2.5 .
```

### Running Pt Tracker with docker-compose

- To install docker compose see `https://docs.docker.com/compose/install/`

- Copy PtTracker.json to where your docker-compose file is.

- To start docker-compose to run the container.

```bash
docker-compose up -d
```

- After Pt Tracker is running check the Pt Tracker logs.

```bash
docker logs pttracker
```

### Upgrade to new version

- To upgrade to the latest Pt Tracker bot version, pull the latest version from docker hub.

```bash
docker-compose pull
```

- Stop and remove container.

```bash
docker-compose down
```

- Run it again.

```bash
docker-compose up -d
```

Tip jar, support appreciated!

BTC: 1JvpPGe22ViBYNiNrA3nwtg71Jta5vqXAi

BCH: qzndnssc368k5h5ndg6h2d5pewmkycd50c9gxcpre6

LTC: LWRDbKva26cATarA2PoTXTpKVJwCRCzbNC

ETH: 0x13346b1DcF1f923bD357a1C8900C4475342e5255

ZEC: t1YgFzgYdRymwJcwTBaS1harBf1sPakgbZ4

DASH: XanACebtJkEZsfRaMahbnqCU4LPt42e3mE
