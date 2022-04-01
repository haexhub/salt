place nhost docker compose file and bring container up:
  file.managed:
    - name: /usr/share/docker/nhost/docker-compose.yml
    - source: salt://nhost/docker-compose.yml
    - makedirs: True

  module.run:
    - name: dockercompose.up
    - path: /usr/share/docker/nhost/docker-compose.yml  
