install podman:
  pkg.installed:
    - pkgs: 
      - podman
      - python3-pip

  file.append:
    - name: /etc/bashrc
    - text: alias docker=podman

  pip.installed:
    - pkgs: 
      - docker
      - docker-compose
  