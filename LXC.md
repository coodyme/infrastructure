## Update and Upgrade

Before using LXC containers, it is recommended to update and upgrade the container's packages. This is done by running the following commands:

```bash
apt update && apt full-upgrade -y
```
> When creating LXC, make sure to unflag "Unprivileged container" to avoid permission issues. Also, after creating the container, make sure to enable "Nestin" in the options screen before starting the container.

## List of Services

- [Cockpit](lxc/cockpit.md) - Web-based server manager that makes it easy to administer your GNU/Linux servers via a web browser.
