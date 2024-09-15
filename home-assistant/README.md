# Home Assistant

A standalone container-based installation of Home Assistant Core means that the software is installed inside a Docker container, separate from the host operating system. This allows for flexibility and scalability, as well as improved security, as the container can be easily moved or isolated from other processes on the host.

> If the LXC is created Privileged, the script will automatically set up USB passthrough.

To create a new Proxmox VE Home Assistant Container LXC, run the command below in the Proxmox VE Shell.
To Update Containers, Remove Images or Install HACS, run the command below (or type update) in the LXC Console.

```bash
bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/homeassistant.sh)"
```
To open the Home Assistant Web Interface, open a web browser and navigate to `http://<IP>:8123` where `<IP>` is the IP address of the Container.
