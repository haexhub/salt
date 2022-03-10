Build and Deploy traefik container:
  docker_container.running:
    - image: docker.io/library/traefik
    - name: traefik
  
  file.managed:
    - name: /usr/share/docker/traefik/docker-compose.yml
    - source: salt://traefik/docker-compose.yml
