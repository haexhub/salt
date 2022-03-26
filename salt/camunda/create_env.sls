create env file for camunda:
  file.managed:
    - name: /usr/share/docker/camunda/.env
    - makedirs: True
    - text: |
        HOSTNAME={{ pillar['hostname'] }}
        #TRAEFIK_HTTP_ENDPOINT = {{ pillar['traefik']['http_endpoint'] }}
        #TRAEFIK_HTTPS_ENDPOINT = {{ pillar['traefik']['https_endpoint'] }}
