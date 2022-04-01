deploy traefik container:
  file.managed:
    - name: /usr/share/docker/traefik/docker-compose.yml
    - source: salt://traefik/docker-compose.yml
    - makedirs: True

  module.run:
    - name: dockercompose.up
    - path: /usr/share/docker/traefik/docker-compose.yml  
