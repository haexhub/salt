Build and Deploy traefik container:
  docker.installed:
    - image: traefik:latest
    - name: traefik

  # docker_container.running:
  #   - name: traefik
  #   - image: traefik:latest
