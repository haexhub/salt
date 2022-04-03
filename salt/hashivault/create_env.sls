create hashivault env file:
  file.keyvalue:
    - name: /usr/share/docker/hashivault/.env
    - key_values: 
        HOSTNAME: {{ pillar['hostname'] }}

        VAULT_PORT: {{ pillar['hashivault']['port'] }}

        TRAEFIK_HTTP_ENDPOINT: {{ pillar['traefik']['http_endpoint'] }}
        TRAEFIK_HTTPS_ENDPOINT: {{ pillar['traefik']['https_endpoint'] }}
    - separator: '='
    - append_if_not_found: True
    - uncomment: '# '
