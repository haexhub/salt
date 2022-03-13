install podman:
  {#
  cmd.run:
    - name: apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    - creates: /etc/apt/sources.list.d/docker.list

  
    file.managed:
    - name: /etc/apt/sources.list.d/docker.list
    - source: salt://docker.list
    #}

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

  