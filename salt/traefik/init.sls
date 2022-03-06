Build and Deploy traefik container:
  docker_container.installed:
    - image: traefik:latest
    - name: traefik

  # docker_container.running:
  #   - name: traefik
  #   - image: traefik:latest
