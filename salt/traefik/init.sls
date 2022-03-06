Deploy traefik container:
  docker.client.compose:
   #source: 
    traefik:
      image: salt://traefik/docker-compose.yml
      status: up
      pull: true