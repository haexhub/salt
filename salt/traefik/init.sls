Deploy traefik container:
  docker.client.compose:
    source: 
      image: salt://traefik/docker-compose.yml
    traefik:
      status: up
      pull: true