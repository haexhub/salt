Build and Deploy traefik container:
  docker.installed:
    traefik:
      - image: traefik:latest
      - name: traefik
      - require:
        - docker: traefik_pulled

  # docker_container.running:
  #   - name: traefik
  #   - image: traefik:latest
