# Infrastructure
Files and scripts to set up my home lab infrastructure. Here you can find the configuration files for my Proxmox, Docker, Kubernetes clusters and some Terraform scripts.

## Time Zone
By default, my time zone is `America/Sao_Paulo` for all of my containers. So in the .env file, the `TZ` variable is set to `America/Sao_Paulo`.

## Proxmox Configuration

For a fresh Proxmox installation, follow the steps below to configure the system.

- Access the Proxmox web interface at `https://<ip>:8006`.
- Log in with the default credentials (root/pam).

Get the following Scripts from Proxmox VE Helper-Scripts at https://tteck.github.io/Proxmox

1. Run Post-Install Script

```bash
bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/misc/post-pve-install.sh)"
```
> It is recommended to answer “yes” (y) to all options presented during the process.

2. Remove LVM-Thin 

If you want to remove LVM-Thin, run the following commands:

```bash
lvremove /dev/pve/data
lvresize -l +100%FREE /dev/pve/root
resize2fs /dev/mapper/pve-root
```

3. Append the following lines to `/etc/systemd/journald.conf`:

```bash
Storage=volatile
ForwardToSyslog=no
```

> This will reduce ssd wear by disabling journaling.

