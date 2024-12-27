# Getting Started with Clickhouse using Docker

Docker is an easy way to get started with Clickhouse.

## Prerequisites

1. [Docker](https://www.docker.com/get-started)
2. [Docker Compose](https://docs.docker.com/compose/install/)

## Configuration

1. Create `.env` by simply making a copy of [`.env.example`](./.env.example), and update environment variables as per your customization.

2. Create `config.d/config.xml` by simply making a copy of [`config.d/config.xml.example`](./config.d/config.xml.example), and update file as per your customization.

3. Create `users.d/users.xml` by simply making a copy of [`users.d/users.xml.example`](./users.d/users.xml.example), and update file as per your customization.


## Normal Operation

To run the container, simply run: `docker compose up`

After waiting several minutes for Clickhouse initialization to finish, the container exposes port `8123` for the [HTTP interface](https://clickhouse.com/docs/en/interfaces/http_interface/)⁠ and port `9000` for the [native client](https://clickhouse.com/docs/en/interfaces/tcp/)⁠.

Web UI can be accessed here: http://localhost:8123/play

ClickHouse configuration is represented with a file "config.xml" ([documentation](https://clickhouse.com/docs/en/operations/configuration_files/⁠))
