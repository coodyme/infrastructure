# Homepage

`Homepage` is a self-hosted dashboard solution for centralizing and organizing data and information.

To `create` or `update` a new Proxmox VE Homepage LXC, run the command below in the `Proxmox VE Shell`. 

```bash
bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/homepage.sh)"
```

> To customize, use configuration files (bookmarks.yaml, services.yaml, widgets.yaml and settings.yaml) located in `/homepage` and paste at `/opt/homepage/config`

> The service will be available at: `http://<IP>:3000`

> Use a YAML validator to check the syntax of the configuration files: [YAML Validator](https://codebeautify.org/yaml-validator)
