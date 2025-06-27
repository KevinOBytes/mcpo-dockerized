# MCPO-Dockerized

MCPO-Dockerized demonstrates how to run [MCPO](https://github.com/open-webui/mcpo) in a Docker container, making it easy to integrate with your Open-WebUI stack or Docker Compose setup.

## Image

This project uses the official `ghcr.io/open-webui/mcpo:main` image, with added support for Docker as a container backend. This enables you to launch MCP servers via Docker, configurable through `config.json`. See the included example for connecting to a Minio Example Play Database using a Docker-launched MCP server.

## Supported MCP Server Types

You can install any MCP server you prefer. By default, the setup supports:

- uvx
- npx
- docker

## Building the Image

To build the image, run:

```sh
docker compose up --build
```

Or, to build manually:

```sh
docker build -t mcpo:latest .
```

## Running the Image

## Example: Running with Your Stack

From a cloned Open-WebUI repository, you can start your stack with:

```sh
docker compose -f docker-compose.yaml -f docker-compose.jupytr.yaml -f docker-compose.playwright.yaml -f docker-compose.mcpo.yml up -d
```

## Podman Version

An alternative version using Podman is also available.