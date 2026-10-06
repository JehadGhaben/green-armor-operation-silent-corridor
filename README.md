<p align="center">
  <img src="docs/assets/green-armor-logo.png" alt="GREEN ARMOR" width="250">
</p>

<h1 align="center">OPERATION SILENT CORRIDOR</h1>
<p align="center"><strong>A route exists where no route should exist.</strong></p>

<p align="center">
  <img alt="Docker" src="https://img.shields.io/badge/Docker-Cyber%20Range-2496ED?logo=docker&logoColor=white">
  <img alt="Difficulty" src="https://img.shields.io/badge/Difficulty-Intermediate-22c55e">
  <img alt="Focus" src="https://img.shields.io/badge/Focus-Pivoting%20%7C%20Tunneling%20%7C%20Lateral%20Movement-111111">
  <img alt="GREEN ARMOR" src="https://img.shields.io/badge/GREEN%20ARMOR-Cyber%20Security-16a34a">
</p>

---

## The Story

During an authorized assume-breach assessment, suspicious traffic is detected around an exposed EDGE segment.

The initial workstation is controlled, but the protected network behind it is not directly reachable. No obvious route exists from the current position to the systems deeper inside the environment.

Still, something on the EDGE does not belong entirely to one side.

A machine is quietly standing between two trust zones.

What looks like a dead end may actually be a corridor.

```text
[ CONTROLLED WORKSTATION ]  ──────►  [ UNKNOWN PATH ]  ──────►  [ PROTECTED NETWORK ]
          EDGE                         ? ? ?                         CORE
```

**Operation Silent Corridor** is a hands-on GREEN ARMOR cyber range focused on network awareness, pivoting, tunneling, proxying, and controlled lateral movement inside an isolated environment.

No walkthrough is included in this repository. The intended path is yours to discover.

## Challenge Profile

| Attribute | Value |
|---|---|
| Difficulty | Intermediate |
| Environment | Docker / Docker Compose |
| Focus | Pivoting, Tunneling, Lateral Movement |
| Supporting Skills | Network discovery, SSH, SOCKS, ProxyChains, service enumeration |
| Exposure | Local isolated cyber range |

## Start the Range

### Requirements

- Docker Desktop or Docker Engine
- Docker Compose v2
- 4 GB RAM minimum; 6 GB recommended
- Windows, Linux, or macOS

### Linux / macOS

```bash
chmod +x start.sh stop.sh
./start.sh
```

### Windows

Run:

```powershell
docker compose up -d --build
docker compose ps
docker exec -it ga-attacker bash
```

Or simply double-click `start.bat`.

### Enter the Workstation

```bash
docker exec -it ga-attacker bash
```

## Stop / Reset

```bash
./stop.sh
```

Full reset:

```bash
docker compose down -v --remove-orphans
docker compose up -d --build
```

## Rules

Treat the environment as a black-box challenge while solving it. Reading service source files, Docker build files, embedded data, or the validation workflow can reveal the intended path and spoil the experience.

Use this environment only as an isolated cyber range and only apply the techniques against systems you own or are explicitly authorized to assess.

## Build Validation

GitHub Actions validates the Compose configuration, boots the range, checks service health, confirms the EDGE boundary, and verifies that the protected services are reachable from the intended internal side.

## Troubleshooting

See [docs/TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md) for environment and Docker startup issues. It does not contain a walkthrough.

## License

The source code in this repository is released under the MIT License. See [LICENSE](LICENSE).

**GREEN ARMOR** names, visual identity, and logo assets remain GREEN ARMOR brand assets.

---

<p align="center"><strong>GREEN ARMOR CYBER SECURITY</strong><br>
<strong>Developed by JEHAD GHABEN</strong></p>
