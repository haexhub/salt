create env file for portainer:
  file.append:
    - name: /usr/share/docker/portainer/.env
    - makedirs: True
    - text: |
        HOSTNAME={{ pillar['hostname'] }}
