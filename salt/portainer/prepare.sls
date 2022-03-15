get portainer image and distribute docker-compose file:  
  docker_image.present:
    - name: portainer/portainer-ce

  file.managed:
    - name: /usr/share/docker/portainer/docker-compose.yml
    - source: salt://portainer/docker-compose.yml
    - makedirs: True