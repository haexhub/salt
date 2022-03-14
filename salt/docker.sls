install docker and make sure daemon is running:
  pkgrepo.managed:
    - baseurl: https://download.docker.com/linux/fedora/docker-ce.repo
    - name: Docker-CE
      
  pkg.installed:
    - pkgs:
      - python3-pip
      - docker-compose
      - docker-ce
      - docker-ce-cli
      - containerd.io

  pip.installed:
    - pkgs: 
      - docker
      - docker-compose

  service.running:
    - name: docker
    - require: 
      - pkg: docker-ce

  