# Redis

Redis is an open-source, in-memory data store used by millions of developers as a cache, vector database, document database, streaming engine, and message broker.

To create a new Proxmox VE Redis LXC, run the command below in the Proxmox VE Shell.

```bash
bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/redis.sh)"
```

> To open Redis Configuration: `nano /etc/redis/redis.conf`
