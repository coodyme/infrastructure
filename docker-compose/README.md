# Docker 🐋
Samples of Docker Compose applications useful for personal use.

- [Healthchecks](https://docs.linuxserver.io/images/docker-healthchecks) - A watchdog for your cron jobs. It's a web server that listens for pings from your cron jobs, plus a web interface.
- [Activepieces](https://github.com/activepieces/activepieces) - True zapier alternative.
- [Cloudflared](https://github.com/WisdomSky/Cloudflared-web) - Cloudflare Tunnels in a Web UI
- [Dash.](https://github.com/MauriceNino/dashdot) - A simple, modern server dashboard, primarily used by smaller private server
- [Dockge](https://github.com/louislam/dockge) - Docker compose.yaml stack-oriented manager.
- [Dozzle](https://github.com/amir20/dozzle) - Dozzle is a small web based app to monitor Docker logs
- [Duplicati](https://github.com/linuxserver/docker-duplicati) - Store securely encrypted backups in the cloud!
- [File Browser](https://github.com/filebrowser/filebrowser) - Access your homeserver files from your browser
- [Firefly III](https://github.com/firefly-iii/firefly-iii) - Firefly III: a personal finances manager 
- [Grafana](https://github.com/grafana/grafana) - The open and composable observability and data visualization platform
- [Homarr](https://github.com/ajnart/homarr) - Homarr is a simple and lightweight homepage for your server, that helps you easily access all of your services in one place.
- [Home Assistant](https://github.com/home-assistant/core) - Open source home automation that puts local control and privacy first
- [Jellyfin](https://github.com/jellyfin/jellyfin) - A media server for your home collection
- [MongoDB](https://github.com/mongodb/mongo) - MongoDB is an open-source NoSQL database
- [Nextcloud](https://github.com/nextcloud/server) - Productivity platform that keeps you in control
- [Nginx](https://github.com/nginx/nginx) - Open-source simple and fast web server.
- [Pi-hole](https://github.com/pi-hole/pi-hole) - A black hole for Internet advertisements
- [Plex](https://github.com/plexinc/pms-docker) - Stream Movies & TV Shows
- [Portainer](https://github.com/portainer/portainer) - Making Docker and Kubernetes management easy.
- [Scrypted](https://github.com/koush/scrypted) - High performance home video integration and automation platform
- [Tailscale](https://github.com/tailscale/tailscale) - The easiest, most secure way to use WireGuard and 2FA.
- [Uptime Kuma](https://github.com/louislam/uptime-kuma) - A fancy self-hosted monitoring tool.
- [VaultWarden](https://github.com/dani-garcia/vaultwarden) - All your passwords in your control!
- [Wireguard](https://github.com/WeeJeWel/wg-easy/) - VPN server for your homeserver

## Network
To create a separate named Docker network for containers, run the following command:

```bash
docker network create pegasus --driver=bridge --subnet=172.172.0.0/16 --gateway=172.172.0.1
```

> In this case, the network is named `pegasus`. You can change it to your desired name.
