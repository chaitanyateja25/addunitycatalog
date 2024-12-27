# Getting Started with Traefik using Docker

Docker is an easy way to get started with [Traefik](https://github.com/traefik/traefik/).

## Prerequisites

1. [Docker](https://www.docker.com/get-started)
2. [Docker Compose](https://docs.docker.com/compose/install/)

## Configuration

1. Create `.env` by simply making a copy of [`.env.example`](./.env.example), and update environment variables as per your customization.

2. Create `./config/traefik.yml` by copy of [`./config/traefik.yml.example`](./config/traefik.yml.example) and update it.

3. You can create file in [`./config/file_provider`](./config/file_provider) directory for file provider config.

## Normal Operation

To run the container, simply run: `docker compose up`
