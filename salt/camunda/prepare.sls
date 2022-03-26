place camunda docker-compose file to the right place:
  file.managed:
    - name: /usr/share/docker/camunda/docker-compose.yml
    - source: salt://camunda/docker-compose.yml
    - makedirs: True