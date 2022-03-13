Build and Deploy traefik container:
  file.managed:
    - name: /usr/share/docker/traefik/docker-compose.yml
    - makedirs: True
    - source: salt://traefik/docker-compose.yml

  docker_image.present:
    - force: True
    - name: traefik:latest
    - tag: traefik
    
  docker_container.running:
    - image: traefik:latest
    - name: traefik
  
  
