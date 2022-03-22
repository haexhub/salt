create env file for camunda:
  file.append:
    - name: /usr/share/docker/camunda/.env
    - makedirs: True
    - text: |
        HOSTNAME={{ pillar['hostname'] }}
