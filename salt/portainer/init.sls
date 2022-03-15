deploy portainer container:
  include:
    - portainer.prepare
  module.run:
    - name: dockercompose.up
    - force: True
    - path: /usr/share/docker/portainer/docker-compose.yml  
