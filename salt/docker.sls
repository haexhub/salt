install docker and make sure daemon is running:
  pkgrepo.managed:
    - baseurl: https://download.docker.com/linux/fedora/34/x86_64/stable/
    - name: Docker-CE
    - gpgcheck: 0
      
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

  