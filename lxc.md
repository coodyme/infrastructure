# LXC Containers

A Linux container is a set of one or more processes that are isolated from the rest of the system. All the processes in a container share the same kernel, but each container has its own file system, network interfaces, and process space.

This page contains information on how to create and manage LXC containers on Proxmox VE using Scripts.

## Alpine LXC

A security-oriented, lightweight Linux distribution based on musl and BusyBox.
By default, the root password is set to alpine. If you choose to use advanced settings, you will need to define a password, autologin is currently unavailable.
To create a new Proxmox VE Alpine LXC, run the command below in the Proxmox VE Shell.

```bash
bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/alpine.sh)"
```

> Default Password `alpine`
> To Update Alpine `apk update && apk upgrade`

## Debian LXC

Debian Linux is a distribution that emphasizes free software. It supports many hardware platforms.
To create a new Proxmox VE Debian LXC, run the command below in the Proxmox VE Shell.

```bash
bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/debian.sh)"
```

## Ubuntu LXC

Ubuntu is a distribution based on Debian, designed to have regular releases and a consistent user experience.
To create a new Proxmox VE Ubuntu LXC, run the command below in the Proxmox VE Shell.

```bash
bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/ubuntu.sh)"
```
