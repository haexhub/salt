create env file:
  file.managed:
    - name: /usr/share/docker/traefik/.env
    - makedirs: True
    - contents:
      - HOSTNAME = {{ pillar['hostname'] }}
      - TRAEFIK_HTTP_ENDPOINT = {{ pillar['traefik']['http_endpoint'] }}
      - TRAEFIK_HTTPS_ENDPOINT = {{ pillar['traefik']['https_endpoint'] }}
