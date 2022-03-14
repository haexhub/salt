create env file:
  file.managed:
    - name: /usr/share/docker/traefik/.env
    - makedirs: True
    - defaults:
        HOSTNAME: {{ pillar['hostname'] }}
