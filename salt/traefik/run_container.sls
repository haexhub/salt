deploy traefik container:
  docker_image.present:
    - name: traefik:latest

  file.managed:
    - name: /usr/share/docker/traefik/docker-compose.yml
    - source: salt://traefik/docker-compose.yml
    - makedirs: True

  module.run:
    - name: dockercompose.up
    - path: /usr/share/docker/traefik/docker-compose.yml  
