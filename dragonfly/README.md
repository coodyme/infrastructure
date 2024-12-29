# Dragonfly

This guide will walk you through the steps to deploy a Dragonfly instance using Docker Compose.

> This guide assumes you have `docker` and `docker-compose` installed on your machine. If not, Install `Docker` and `Docker Compose` before continuing.

> If you are running Proxmox VE, follow this [guide](../proxmox/docker.md) to install Docker and Docker Compose on Proxmox VE

1. Download the `docker-compose.yml` file from the repository.
wget 

2. 

3. 


# Launch the Dragonfly Instance
docker compose up -d

# Confirm image is up
docker ps | grep dragonfly

```
ac94b5ba30a0   docker.dragonflydb.io/dragonflydb/dragonfly   "entrypoint.sh drago…"   45 seconds ago   Up 31 seconds         0.0.0.0:6379->6379/tcp, :::6379->6379/tcp   docker_dragonfly_1

``` 

# Log follow the dragonfly container
docker logs -f docker_dragonfly_1


https://www.dragonflydb.io/docs/getting-started/docker-compose
