# Getting Started with Superset using Docker

Docker is an easy way to get started with Superset.

## Prerequisites

1. [Docker](https://www.docker.com/get-started)
2. [Docker Compose](https://docs.docker.com/compose/install/)

## Configuration

Setup `.env` by simply making a copy of [`.env.example`](./.env.example), and update environment variables as per your customization.

The `/app/pythonpath` folder is mounted from [`./pythonpath_dev`](./pythonpath_dev)
which contains a base configuration [`./pythonpath_dev/superset_config.py`](./pythonpath_dev/superset_config.py)
intended for use with local development.

### Local overrides

In order to override configuration settings locally, simply make a copy of [`./pythonpath_dev/superset_config_local.example`](./pythonpath_dev/superset_config_local.example)
into `./pythonpath_dev/superset_config_docker.py` (git ignored) and fill in your overrides.

### Local packages

If you want to add Python packages in order to test things like databases locally, you can simply add a local requirements.txt (`./requirements-local.txt`)
and rebuild your Docker stack.

Steps:

1. Create `./requirements-local.txt`
2. Add your new packages
3. Rebuild docker compose
    1. `docker compose down -v`
    2. `docker compose up`

## Initializing Database

The database will initialize itself upon startup via the init container ([`superset-init`](./docker-init.sh)). This may take a minute.

## Normal Operation

To run the container, simply run: `docker compose up`

After waiting several minutes for Superset initialization to finish, you can open a browser and view [`http://localhost:8088`](http://localhost:8088)
to start your journey.

## Resource Constraints

If you are attempting to build on macOS and it exits with 137 you need to increase your Docker resources. See instructions [here](https://docs.docker.com/docker-for-mac/#advanced) (search for memory)
