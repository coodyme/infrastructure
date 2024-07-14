# Infrastructure
Files and scripts to set up my home lab infrastructure. Here you can find the configuration files for my Proxmox, Docker, Kubernetes clusters and some Terraform scripts.

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

## ZFS

First of all, we need to create a ZFS pool. To do this, go to the Proxmox web interface and click on `Datacenter` > `Node` > `Disks` > `Create: ZFS`

To list created pools:

```bash
zpool list
```
Then, we can create datasets for the pool:

```bash
zfs create sg0/backups
```

We can list created datasets with the following command:

```bash
zfs list
```

After creating the datasets, we need to create directories in Proxmox. To do this, go to the Proxmox web interface and click on `Datacenter` > `Storage` > `Add` > `Directory`

- ID: `backups`
- Directory: `/sg0/backups`
- Content: `VZDump Backup File`

> You can create various datasets and directories according to your needs.

> Remember to Scrub the pool periodically to prevent data corruption running the following command: `zpool scrub sg0` and `zpool status sg0` to check the status.
