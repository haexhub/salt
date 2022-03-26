create seafile env file:
  file.keyvalue:
    - name: /usr/share/docker/seafile/.env
    - key_values: 
        HOSTNAME: {{ pillar['hostname'] }}

        SEAFILE_ADMIN_EMAIL: {{ pillar['seafile']['admin_email'] }}
        SEAFILE_TIMEZONE: {{ pillar['seafile']['timezone'] }}

        TRAEFIK_HTTP_ENDPOINT: {{ pillar['traefik']['http_endpoint'] }}
        TRAEFIK_HTTPS_ENDPOINT: {{ pillar['traefik']['https_endpoint'] }}
    - separator: '='
    - append_if_not_found: True
    - uncomment: '# '
