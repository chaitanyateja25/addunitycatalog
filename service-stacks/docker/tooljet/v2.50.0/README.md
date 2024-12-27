# Getting Started with Tooljet using Docker

Docker is an easy way to get started with [Tooljet](https://www.tooljet.com/).

## Prerequisites

1. [Docker](https://www.docker.com/get-started)
2. [Docker Compose](https://docs.docker.com/compose/install/)

## Configuration

1. Create `.env` by simply making a copy of [`.env.example`](./.env.example), and update environment variables as per your customization.

2. To setup extra settings for tooljet specific service, create `.env-tooljet` file and set env vars. To know more about supported env vars, [click here](https://docs.tooljet.com/docs/setup/env-vars)

## Normal Operation

To run the container, simply run: `docker compose up`
