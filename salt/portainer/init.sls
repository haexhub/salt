deploy portainer container:
  include:
    - prepare
  module.run:
    - name: dockercompose.up
    - force: True
    - path: /usr/share/docker/portainer/docker-compose.yml  
