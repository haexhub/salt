deploy traefik container:
  docker_image.present:
    - name: traefik:latest

  module.run:
    - name: dockercompose.up
    - path: /usr/share/docker/traefik/docker-compose.yml  
