include:
  - camunda.create_env
  - camunda.prepare

deploy camunda container:
  module.run:
    - name: dockercompose.up
    - force: True
    - path: /usr/share/docker/camunda/docker-compose.yml