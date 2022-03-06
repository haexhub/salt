Deploy traefik container:
  docker:
    client:
      compose:
        traefik:
          image: salt://traefik/docker-compose.yml
          status: up
          pull: true