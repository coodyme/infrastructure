# Network
To create main Docker network for `andromeda`, run the following command:

```bash
docker network create andromeda --driver=bridge --subnet=173.173.0.0/16 --gateway=173.173.0.1
```
