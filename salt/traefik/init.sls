Build and Deploy traefik container:
  docker.build:
    - build: traefik:latest
    - tag: traefik:latest

  # docker_container.running:
  #   - name: traefik
  #   - image: traefik:latest
