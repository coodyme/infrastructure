# Restoring your Backups#

Even though you hopefully might never need it you should always make sure that restoring your backup works as expected. Testing this process is vital!

Follow these simple steps assuming your `vaultwarden` data directory is at `/opt/vaultwarden` and your backup is at `/opt/vaultwarden-backup` directory.

1. Delete existing .sqlite3* files

```bash
rm /opt/vaultwarden/db.sqlite3*
```
2. Copy your backed up database into the `vaultwarden` data directory

```bash
cp /opt/vaultwarden-backup<TIMESTAMP>.tar.xz /opt/vaultwarden/<TIMESTAMP>.tar.xz
```
3. Extract the additional folders from the archive you created into the Vaultwarden data directory

```bash
tar -xzvf /opt/vaultwarden/<TIMESTAMP>.tar.xz
```
or if you have a .tar.xz file

```bash
tar -xf var/lib/docker/volumes/vaultwarden/_data/<TIMESTAMP>.tar.xz
```
4. Restart the Vaultwarden docker container. 

```bash
docker compose restart
```
