include:
  - portainer.create_env_portainer
  - portainer.prepare
  
deploy portainer container:
  module.run:
    - name: dockercompose.up
    - force: True
    - path: /usr/share/docker/portainer/docker-compose.yml  
