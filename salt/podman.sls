install podman:
  pkg.installed:
    - name: podman
  
  pkg.installed:
    - name: python-pip

  file.append:
    - name: /root/.bashrc
    - text: alias docker=podman

  pip.installed:
    - name: docker
    - require:
      - pkg: python-pip
  