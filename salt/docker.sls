install docker and make sure daemon is running:
  pkg.installed:
    - pkgs: 
      - docker
      - python3-pip
      - docker-compose

  pip.installed:
    - pkgs: 
      - docker
      - docker-compose

  service.running:
    - name: docker
    - require: 
      - pkg: docker

  