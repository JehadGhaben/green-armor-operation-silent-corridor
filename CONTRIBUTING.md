# Contributing

Contributions that improve portability, reliability, documentation, and challenge quality are welcome.

Before submitting a change:

1. keep CORE services unexposed to the host;
2. preserve the intended EDGE → Pivot → CORE architecture;
3. run `docker compose config`;
4. run the full range locally when Docker is available;
5. avoid placing solutions or flags in the public challenge documentation.
