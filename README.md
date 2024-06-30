# docker-pihole
Docker container for DNS level ad blocking using PiHole

## Docker Setup
1. Initialize config by running init.sh: `./init.sh`
2. Input personal information into `.env`
3. Check that port 53 isn't already being used: `ss -tulpn | grep LISTEN`
4. If port 53 in use by `systemd-resolve` disable is by going to `/etc/systemd/resolved.conf` and entering `DNSStubListener=no`, then restart the service: `service systemd-resolved restart`
5. Make sure that Docker network `traefik` exists, `docker network ls`
6. Run `docker compose up` and check logs

## PiHole Setup