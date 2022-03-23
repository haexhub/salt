create seafile env file:
  file.append:
    - name: /usr/share/docker/seafile/.env
    - makedirs: True
    - text: |
        HOSTNAME={{ pillar['hostname'] }}
        SEAFILE_TIMEZONE = {{ pillar['seafile']['timezone'] }}
        SEAFILE_ADMIN_EMAIL = {{ pillar['seafile']['admin_email'] }}
        TRAEFIK_HTTP_ENDPOINT = {{ pillar['traefik']['http_endpoint'] }}
        TRAEFIK_HTTPS_ENDPOINT = {{ pillar['traefik']['https_endpoint'] }}
