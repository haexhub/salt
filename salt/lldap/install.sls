include:
  - lldap.create_env
  
deploy lldap container:
  file.managed:
    - name: /usr/share/docker/lldap/docker-compose.yml
    - source: salt://lldap/docker-compose.yml
    - makedirs: True

  module.run:
    - name: dockercompose.up
    - path: /usr/share/docker/lldap/docker-compose.yml  
