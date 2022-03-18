deploy seafile container:
  file.managed:
    - name: /usr/share/docker/seafile/docker-compose.yml
    - source: salt://seafile/docker-compose.yml
    - makedirs: True

  module.run:
    - name: dockercompose.up
    - path: /usr/share/docker/seafile/docker-compose.yml  
