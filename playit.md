## Viewing the tunnel host

To view the tunnel host once it is running as a service, use the following command:

```bash
screen -r playit.gg
```

To exit the tunnel host and return to the terminal session, use Ctrl+A D. This will detach you from the screen session and return you to your previous terminal session. If you use Ctrl+C, it will terminate the tunnel host. If this happens, simply restart the tunnel host using systemctl start playit.


## Managing the service

To manage any service on Linux under systemd, you use the systemctl command.

To stop the playit service, run sudo systemctl stop playit.
To start the playit service, run sudo systemctl start playit.
To restart the playit service, run sudo systemctl restart playit.
To view the status of the playit service, run systemctl status playit.

https://unturned.wiki.gg/wiki/Linux_dedicated_server
https://github.com/aBoredDev/playit-setup-script/blob/main/playit-setup.sh
