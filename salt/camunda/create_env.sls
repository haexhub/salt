create env file for camunda:
  file.keyvalue:
    - name: /usr/share/docker/camunda/.env
    - key_values: 
        HOSTNAME: {{ pillar['hostname'] }}
        TRAEFIK_HTTP_ENDPOINT: {{ pillar['traefik']['http_endpoint'] }}
        TRAEFIK_HTTPS_ENDPOINT: awdawd
    - separator: '='
    - append_if_not_found: True
