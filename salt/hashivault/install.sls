include:
  - hashivault.create_env
  
deploy hashivault container:
  file.managed:
    - name: /usr/share/docker/hashivault/docker-compose.yml
    - source: salt://hashivault/docker-compose.yml
    - makedirs: True

  module.run:
    - name: dockercompose.up
    - path: /usr/share/docker/hashivault/docker-compose.yml  
