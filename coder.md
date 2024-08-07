# Coder

Use Coder docker-compose file located at `docker-compose/coder/docker-compose.yaml` to deploy Coder on your server.

1. Make sure you have Docker Compose installed.

2. Copy the docker-compose.yaml file to your server.

3. Update group_add: in docker-compose.yaml with the gid of docker group. You can get the docker group gid by running the below command:

```bash
getent group docker | cut -d: -f3
```

4. Start Coder with `docker compose up -d` command.

5. Follow the on-screen instructions log in and create your first template and workspace
