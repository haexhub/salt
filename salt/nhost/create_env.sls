make sure nhost env file exists:
  file.exists:
    - name: /usr/share/docker/nhost/.env

set env parameter:
  file.keyvalue:
    - name: /usr/share/docker/nhost/.env
    - key_values: 
        HOSTNAME: {{ pillar['hostname'] }}
        TRAEFIK_HTTP_ENDPOINT: {{ pillar['traefik']['http_endpoint'] }}
        TRAEFIK_HTTPS_ENDPOINT: {{ pillar['traefik']['https_endpoint'] }}
    - separator: '='
    - append_if_not_found: True
    - uncomment: '# '
