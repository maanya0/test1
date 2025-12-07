# Garnix Server

A NixOS server deployed via [Garnix](https://garnix.io) with Docker support and optimizations for self-hosted apps.

## Features

- **Docker & Docker Compose** - For containerized apps
- **Native NixOS services** - Pre-configured for Jellyfin, Sonarr, Radarr, etc.
- **Optimized for media streaming** - Network/memory tuning for apps like Jellyfin
- **Binary caches** - Fast package downloads (no compiling)
- **Persistent storage** - Data survives redeployments

## Deployment

1. Create a [Garnix](https://garnix.io) account
2. Fork/clone this repo
3. Enable the Garnix GitHub App on your repo
4. Update SSH key in [`hosts/server.nix`](./hosts/server.nix)
5. Push to `main` branch - Garnix will deploy automatically!

## Configuration

Edit `hosts/server.nix` to:
- Add system packages
- Enable native NixOS services (uncomment the examples)
- Adjust Docker settings

## SSH Access

```bash
ssh me@server.main.<your-repo>.<your-user>.garnix.me
```
