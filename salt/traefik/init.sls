Build and Deploy traefik container:
  docker_image.present:
    - name: traefik:latest
    - tag: traefik

  {# docker_container.running:
  #   - name: traefik
  #   - image: traefik:latest
  #}
