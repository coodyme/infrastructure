# Cloudflared

Client for Cloudflare Tunnel, ad daemon that exposes private service through the Cloudflare edge.

> This is for connecting to a remote server via SSH (Not for exposing a service in Docker), if you want yo expose a container, use docker-compose.yaml instead.

### How to connect via SSH to a remote host

1. Download [Cloudflared](https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb) to your server and local machine 
2. To download run `wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb`
3. Install using `sudo apt-get install ./cloudflared-linux-amd64.deb`
4. Login into you Cloudflare Zero Trust account
5. Go to `Access` > `Applications`
6. Click on `Add an application` > `Self-hosted`
7. Fill `Application nam`, `Subdomain`, `Domain` and click on `Next`
8. Now, you can add policies to your application
9. Go to `Access` > `Tunnels`and create a new tunnel
10. Then, click on `Add a public hostname`
11. Fill `Subdomain`, `Domain` and select `type` to ssh, fill `url` with `localhost:22`
12. Go to `Additional application settings` > `Connection` > `Proxy Type` and fill with `""`, then click on `Save hostname`
13. Now, into your local machine run `cloudflared access ssh-config --hostname <subdomain>.<domain>`
14. Copy the output and add to ssh config file `~/.ssh/config`
