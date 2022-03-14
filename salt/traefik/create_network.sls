create web network:
  docker_network.present:
    - name: web
    - containers:
      - traefik
    - labels:
      - purpose: internet access for container via traefik