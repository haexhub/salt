make sure portainer env file exists:
  file.managed:
    - name: /usr/share/docker/portainer/.env
    - makedirs: True

set env variables for portainer:
  file.keyvalue:
    - name: /usr/share/docker/portainer/.env
    - key_values: 
        HOSTNAME: {{ pillar['hostname'] }}
        TRAEFIK_HTTP_ENDPOINT: {{ pillar['traefik']['http_endpoint'] }}
        TRAEFIK_HTTPS_ENDPOINT: {{ pillar['traefik']['https_endpoint'] }}
    - separator: '='
    - append_if_not_found: True
    - uncomment: '# '