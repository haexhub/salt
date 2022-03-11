install podman:
  pkg.installed:
    - pkgs: 
      - podman
      - python3-pip
      - docker-compose

  file.append:
    - name: /etc/bashrc
    - text: alias docker=podman

  pip.installed:
    - pkgs: 
      - docker
      - docker-compose

  service.running:
    - name: podman
  