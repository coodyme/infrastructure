# Network
To create main Docker network for `pegasus`, run the following command:

```bash
docker network create pegasus --driver=bridge --subnet=172.172.0.0/16 --gateway=172.172.0.1
```
