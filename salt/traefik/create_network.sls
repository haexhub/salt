create web network:
  docker_network.present:
    - name: web
    - labels:
      - purpose: internet access for traefik container