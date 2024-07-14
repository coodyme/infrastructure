## Docker

This is a simple `Docker` setup that I use for my projects. It is based on the `docker-compose` file and LXC containers.

##  Running Docker inside LXC

By default, I always use `ttek` to create my containers. This is a script that I use to automate the process of creating LXC containers with Docker. The script is available at [Docker LXC](https://tteck.github.io/Proxmox/#docker-lxc)

```bash
bash -c "$(wget -qO - https://github.com/tteck/Proxmox/raw/main/ct/alpine-docker.sh)"
```

## Time Zone
By default, my time zone is `America/Sao_Paulo` for all of my containers. So in the .env file, the `TZ` variable is set to `America/Sao_Paulo`.
