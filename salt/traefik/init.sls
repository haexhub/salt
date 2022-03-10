Build and Deploy traefik container:
  file.managed:
    - name: /usr/share/docker/traefik/docker-compose.yml
    - makedirs: True
    - source: salt://traefik/docker-compose.yml
    
  docker_container.running:
    - image: /usr/share/docker/traefik/docker-compose.yml
    - name: traefik
  
  
