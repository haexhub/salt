Build and Deploy traefik container:
  docker_image.present:
    - build: traefik:latest
    - tag: traefik:latest

  docker_container.running:
    - name: traefik
    - image: traefik:latest
