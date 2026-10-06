# Troubleshooting

## Docker is not running

Confirm:

```bash
docker version
docker compose version
```

On Windows/macOS, start Docker Desktop first.

## Clean restart

```bash
docker compose down -v --remove-orphans
docker compose up -d --build
docker compose ps
```

## See logs

```bash
docker compose logs --tail=100
```

For one service:

```bash
docker compose logs pivot
docker compose logs database
docker compose logs internal-web
docker compose logs internal-ssh
```

## Attacker cannot SSH to EDGE pivot

```bash
docker exec -it ga-attacker bash
nc -vz 10.77.10.20 22
```

If the port is not ready, inspect:

```bash
docker compose ps
docker compose logs pivot
```

## Direct CORE access fails

That is expected. `GA-ATTACKER` is intentionally not attached to CORE. Use the intended pivot path.

## ProxyChains timeout

Confirm the SOCKS listener exists inside `GA-ATTACKER`:

```bash
ss -lntp | grep 9050
```

The provided `/etc/proxychains4.conf` already points to:

```text
socks5 127.0.0.1 9050
```

## Nmap behaves strangely through ProxyChains

Use TCP connect scanning instead of raw SYN scanning:

```bash
proxychains4 -q nmap -sT -Pn ...
```

## Address conflict with another Docker/VPN network

This range uses:

```text
10.77.10.0/24
10.77.20.0/24
```

If your environment already uses either subnet, change both the static addresses and network subnets consistently before assigning or solving the challenge.
