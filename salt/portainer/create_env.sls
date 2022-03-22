create env file for portainer:
  file.append:
    - name: /usr/share/docker/portainer/.env
    - makedirs: True
    - text: |
        HOSTNAME={{ pillar['hostname'] }}
        TRAEFIK_HTTP_ENDPOINT = {{ pillar['traefik']['http_endpoint'] }}
        TRAEFIK_HTTPS_ENDPOINT = {{ pillar['traefik']['https_endpoint'] }}
