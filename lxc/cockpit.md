## Install

Install Cockpit without recommended packages

```bash
apt install cockpit --no-install-recommends -y
```

If any error occurend when installing cockpit, run the following command (then, run the above command again):

```bash
apt-get update --fix-missing
```

Allow root to login

```bash
nano /etc/cockpit/disallowed-users
```

## Download Cockpit Modules

1. File Sharing

https://github.com/45Drives/cockpit-file-sharing/releases

```bash
wget https://github.com/45Drives/cockpit-file-sharing/releases/download/v4.1.0/cockpit-file-sharing_4.1.0-1focal_all.deb
```

2. Navigator

https://github.com/45Drives/cockpit-navigator/releases/tag/v0.5.10

```bash
wget https://github.com/45Drives/cockpit-navigator/releases/download/v0.5.10/cockpit-navigator_0.5.10-1focal_all.deb
```

3. Identities

https://github.com/45Drives/cockpit-identities/releases/tag/v0.1.12

```bash
wget https://github.com/45Drives/cockpit-identities/releases/download/v0.1.12/cockpit-identities_0.1.12-1focal_all.deb
```

## Install Cockpit Modules

Now, install the modules with the following command:

```bash
apt install ./*.deb -y
```

Remove the downloaded files:

```bash
rm *.deb && ls
```

## Configure PVE

Go to the PVE web interface and enable the following options:

```bash
nano /etc/pve/lxc/100.conf
```
> 100.conf must be the container ID

Add the following line to the file `lxc.apparmor.profile: unconfined`:
