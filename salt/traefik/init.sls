Build and Deploy traefik container:
  docker.installed:
    - image: traefik:latest
    - name: traefik
    - require:
      - docker: traefik_pulled

  # docker_container.running:
  #   - name: traefik
  #   - image: traefik:latest
