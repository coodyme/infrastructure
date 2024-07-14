# Cockpit

Cockpit is a web-based server manager that makes it easy to administer your GNU/Linux servers via a web browser.

## Install

Install Cockpit without recommended packages

```bash
apt install cockpit --no-install-recommends -y
```

If any error occurend when installing cockpit, run the following command (then, run the above command again):

```bash
apt-get update --fix-missing
```

> After installing Cockpit, check if the service is running by running the following command: `systemctl status cockpit`

Allow root to login

```bash
nano /etc/cockpit/disallowed-users
```

## Cockpit Modules

Cockpit has several modules that can be installed to extend its functionality. Below are some of the modules that can be installed:

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

### Install Cockpit Modules

Now, install the modules with the following command:

```bash
apt install ./*.deb -y
```

Remove the downloaded files:

```bash
rm *.deb && ls
```

## Setup SAMBA Shares

1. Go to `Identities`, create a group. Then create a `User` and add the user to the group.
2. After user creation, click on `Set Samba Password` and set the password.
3. Go to `File Sharing`, click on `Add Share` and fill in the details.

https://www.naturalborncoder.com/linux/2023/07/07/building-a-nas-using-proxmox-part-2/

## Setup NFS Shares
