make sure lldap env file exists:
  file.managed:
    - name: /usr/share/docker/lldap/.env
    - makedirs: True


set lldap env variables:
  file.keyvalue:
    - name: /usr/share/docker/lldap/.env
    - key_values: 
        HOSTNAME: {{ pillar['hostname'] }}

        TRAEFIK_HTTP_ENDPOINT: {{ pillar['traefik']['http_endpoint'] }}
        TRAEFIK_HTTPS_ENDPOINT: {{ pillar['traefik']['https_endpoint'] }}
    - separator: '='
    - append_if_not_found: True
    - uncomment: '# '
