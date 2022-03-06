Build and Deploy traefik container:
  docker.client.container:
    traefik:
      image: traefik:latest
      ports:
        - 8080:8080

  # docker_container.running:
  #   - name: traefik
  #   - image: traefik:latest
