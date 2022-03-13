Build and Deploy traefik container:
  file.managed:
    - name: /usr/share/docker/traefik/docker-compose.yml
    - makedirs: True
    - source: salt://traefik/docker-compose.yml

  docker.pulled:
    - name: traefik
    - tag: latest
    
  docker_image.present:
    - force: True
    - name: traefik
    - tag: traefik
    
  docker_container.running:
    - image: traefik:latest
    - name: traefik
  
  
