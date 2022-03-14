deploy traefik container:
  module.run:
    - dockercompose.up:
      - path: /usr/share/docker/traefik/docker-compose.yml
{#
  docker_image.present:
    - name: traefik:latest
    
  docker_container.running:
    - image: traefik:latest
    - name: traefik
  #}
  
