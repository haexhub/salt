include:
  - portainer.create_env
  - portainer.prepare
  
deploy portainer container:
  module.run:
    - name: dockercompose.up
    - force: True
    - path: /usr/share/docker/portainer/docker-compose.yml  
