#!/usr/bin/env bash
set -euo pipefail

if ! command -v docker >/dev/null 2>&1; then
  echo "[!] Docker was not found. Install Docker first."
  exit 1
fi

if ! docker compose version >/dev/null 2>&1; then
  echo "[!] Docker Compose v2 was not found."
  exit 1
fi

printf '\n[+] GREEN ARMOR — OPERATION SILENT CORRIDOR\n'
printf '[+] Building and starting the cyber range...\n\n'

docker compose up -d --build

echo
printf '[+] Range status:\n'
docker compose ps

echo
printf '[+] Enter the workstation with:\n'
printf '    docker exec -it ga-attacker bash\n\n'
printf '[+] Stop range: ./stop.sh\n\n'
