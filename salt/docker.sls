install docker and make sure daemon is running:
  pkg.installed:
    - name: dnf-plugins-core

  cmd.run:
    - name: dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

  pkg.installed:
    - pkgs: 
      - docker-ce
      - docker-ce-cli
      - containerd.io
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

  