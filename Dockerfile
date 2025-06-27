FROM ghcr.io/open-webui/mcpo:main AS original_docker_image

LABEL org.opencontainers.image.title="MCPO"
LABEL org.opencontainers.image.description="MCP (Model Context Protocol)-to-OpenAPI proxy server (mcpo)"
LABEL org.opencontainers.image.authors="Kevin O'Connor"
LABEL org.opencontainers.image.source="https://github.com/KevinOBytes/mcpo-docker"
LABEL org.opencontainers.image.version="0.1.0"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.url="https://github.com/KevinOBytes/mcpo-docker"

# Install Docker
RUN apt-get update && \
    apt-get install -y --no-install-recommends docker.io && \
    # Clean up apt cache to reduce image size
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY config.json /app/config.json

EXPOSE 8000

CMD ["mcpo", "--config", "/app/config.json", "--host", "0.0.0.0", "--port", "8000"]
