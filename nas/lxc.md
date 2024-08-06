## Creating LXC

When creating LXC, make sure to unflag "Unprivileged container" to avoid permission issues. Also, after creating the container, make sure to enable "Nesting" in the options screen before starting the container.

`LXC` > `Options` > `Features` > `Nesting`

## Update and Upgrade

Before using LXC containers, it is recommended to update and upgrade the container's packages. This is done by running the following commands:

```bash
apt update && apt full-upgrade -y
```

## LXC Configuration

In some cases, it is necessary to configure the LXC container to allow access to the host's directories if you are using privileged containers.

To do this, follow the steps below:

Go to the PVE web interface and enable the following options:

```bash
nano /etc/pve/lxc/100.conf
```

> .conf must be the container ID

Add the following line to the file `lxc.apparmor.profile: unconfined`;

## LXC Mount Points

To add mount points to the container, add the following line to the container's configuration file:

```bash
nano /etc/pve/lxc/100.conf
```
and add `mp0:/sg0/nas,mp=/mnt/nas` after the `net0` line. This will link host directory to container directory.

## List of Services

- [Cockpit](cockpit.md) - Web-based server manager that makes it easy to administer your GNU/Linux servers via a web browser.

