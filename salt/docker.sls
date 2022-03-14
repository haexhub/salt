install docker and make sure daemon is running:
  pkg.installed:
    - fromrepo: https://download.docker.com/linux/fedora/docker-ce.repo
    - pkgs: 
      - docker-ce
      - docker-ce-cli
      - containerd.io
  
  pkg.installed:
    - pkgs:
      - python3-pip
      - docker-compose

  pip.installed:
    - pkgs: 
      - docker
      - docker-compose

  service.running:
    - name: docker
    - require: 
      - pkg: docker-ce

  