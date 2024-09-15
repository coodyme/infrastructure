# *arr Applications

## Jellyfin

## Jellyseer

## Radarr

## Sonarr

Sonarr is a personal video recorder (PVR) software designed for Usenet and BitTorrent users. It allows users to manage and organize their TV show collection with ease. Sonarr integrates with popular Usenet and BitTorrent clients, such as NZBget and Transmission, to automate the downloading and organizing of TV show files. The software provides a web-based interface for managing and organizing TV shows, making it easy to search and find titles, seasons, and episodes. Sonarr also supports metadata management, including TV show posters and information, making it easy for users to keep their TV show collection organized and up-to-date. The software is designed to be easy to use and provides a simple and intuitive interface for managing and organizing TV show collections, making it a valuable tool for TV show enthusiasts who want to keep their collection organized and up-to-date. With Sonarr, users can enjoy their TV show collection from anywhere, making it a powerful tool for managing and sharing TV show files.

To create a new Proxmox VE Sonarr LXC, run the command below in the Proxmox VE Shell.
To Update Sonarr, run the command below (or type update) in the LXC Console.

```bash
bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/sonarr.sh)"
```

> To access Sonarr, open a web browser and navigate to `http://<IP>:8989` where `<IP>` is the IP address of the Proxmox VE server.

## Prowlarr
